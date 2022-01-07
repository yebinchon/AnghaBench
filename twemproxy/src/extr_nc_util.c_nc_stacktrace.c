
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace (void**,int) ;
 char** backtrace_symbols (void**,int) ;
 int free (char**) ;
 int loga (char*,int,char*) ;

void
nc_stacktrace(int skip_count)
{
}
