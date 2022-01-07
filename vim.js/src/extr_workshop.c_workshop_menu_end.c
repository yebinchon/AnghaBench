
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;


 int GO_TEAROFF ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int gui_mch_toggle_tearoffs (int ) ;
 int p_go ;
 int * vim_strchr (int ,int ) ;
 int wstrace (char*) ;

void
workshop_menu_end()
{
    Boolean using_tearoff;






    using_tearoff = vim_strchr(p_go, GO_TEAROFF) != ((void*)0);
    gui_mch_toggle_tearoffs(using_tearoff);
}
