
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,char) ;

int pathIsBaseName(char *path) {
    return strchr(path,'/') == ((void*)0) && strchr(path,'\\') == ((void*)0);
}
