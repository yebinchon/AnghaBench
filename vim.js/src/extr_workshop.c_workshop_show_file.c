
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int load_window (char*,int ) ;
 int wstrace (char*,char*) ;

void
workshop_show_file(
    char *filename)
{





    load_window(filename, 0);
}
