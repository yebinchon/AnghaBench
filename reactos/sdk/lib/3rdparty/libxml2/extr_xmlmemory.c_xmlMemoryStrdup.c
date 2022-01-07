
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xmlMemStrdupLoc (char const*,char*,int ) ;

char *
xmlMemoryStrdup(const char *str) {
    return(xmlMemStrdupLoc(str, "none", 0));
}
