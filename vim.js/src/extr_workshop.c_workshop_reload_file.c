
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int load_window (char*,int) ;
 int wstrace (char*,char*,int) ;

void
workshop_reload_file(
 char *filename,
 int line)
{




    load_window(filename, line);
}
