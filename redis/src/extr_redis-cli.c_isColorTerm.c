
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int * strstr (char*,char*) ;

int isColorTerm(void) {
    char *t = getenv("TERM");
    return t != ((void*)0) && strstr(t,"xterm") != ((void*)0);
}
