
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tests; } ;


 TYPE_1__ config ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;
 int * strstr (int *,char*) ;

int test_is_selected(char *name) {
    char buf[256];
    int l = strlen(name);

    if (config.tests == ((void*)0)) return 1;
    buf[0] = ',';
    memcpy(buf+1,name,l);
    buf[l+1] = ',';
    buf[l+2] = '\0';
    return strstr(config.tests,buf) != ((void*)0);
}
