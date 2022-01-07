
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_on ;
 char* getenv (char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int init_debug()
{
    char* str=getenv("CXTEST_DEBUG");
    if (str && strstr(str, "+hook"))
        debug_on=1;
    return debug_on;
}
