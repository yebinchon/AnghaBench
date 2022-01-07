
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OutputFlags ;


 int OUTPUT_COLOR ;
 int OUTPUT_FULL_WIDTH ;
 int OUTPUT_SHOW_ALL ;
 int OUTPUT_WARN_CUTOFF ;
 int arg_all ;
 scalar_t__ arg_full ;
 int arg_quiet ;
 int colors_enabled () ;
 int on_tty () ;
 scalar_t__ pager_have () ;

__attribute__((used)) static OutputFlags get_output_flags(void) {
        return
                arg_all * OUTPUT_SHOW_ALL |
                (arg_full || !on_tty() || pager_have()) * OUTPUT_FULL_WIDTH |
                colors_enabled() * OUTPUT_COLOR |
                !arg_quiet * OUTPUT_WARN_CUTOFF;
}
