#! /bin/sh

## global variables
#option_from_files=0
#option_quiet_mode=0
#
### helpers
#log() { `dirname "$0"`/common/log "$@"; }
#
#log_error() { log error "$1"; }
#log_info()  { log info  "$1"; }
#log_warn()  { log warn  "$1"; }
#
#
### display usage
#usage() {
  #log_info "usage: iterate [-fhqv] command args..."
  #log_info ""
  #log_info "this script passes each arg into the command seperately"
  #log_info ""
  #log_info "arguments:"
  #log_info "  command"
  #log_info "    the command to run"
  #log_info "  args"
  #log_info "    the arguments to pass into the command"
  #log_info ""
  #log_info "options:"
  #log_info "  -f, --from-files"
  #log_info "    arguments are files containing the actual arguments"
  #log_info "  -h"
  #log_info "    display the usage information"
  #log_info "  -q, --quiet-mode"
  #log_info "    do not output any status information to the console"
#
  #exit 0
#}
#
### main
## determine what to list based on provided arguments
#while test $# -gt 0
#do
  #case $1 in
    ## normal option processing
    #-h | --help)    usage ;;
    #-v | --version) usage ;;
#
    #-f | --from-files) option_from_files=1 ;;
    #-q | --quiet-mode) option_quiet_mode=1 ;;
#
    ## special cases
    #--)  break ;;
    #--*)       ;; # error unknown (long) option $1
    #-?)        ;; # error unknown (short) option $1
#
    ## split apart combined short options
    #-*)
      #split=$1
      #shift
      #set -- $(echo "$split" | cut -c 2- | sed 's/./-& /g') "$@"
      #continue
      #;;
#
    ## done with options
    #*) break ;;
  #esac
#
  #shift
#done
#
#if test $# -lt 2
#then
  #log_error "supply a minimum of 2 arguments"
  #exit 1
#fi
#
#command=$1
#shift
#
#while test $# -gt 0
#do
  #if test $option_from_files -eq 1
  #then
    #while read arg
    #do
      #log_info "run $command $arg"
      #$command $arg
    #done < "$1"
  #else
    #log_info "run $command $1"
    #$command $1
  #fi
#
  #shift
#done
#
#exit 0
#
