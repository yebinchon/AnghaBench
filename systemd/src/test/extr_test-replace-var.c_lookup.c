
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strjoin (char*,char const*,char*) ;

__attribute__((used)) static char *lookup(const char *variable, void *userdata) {
        return strjoin("<<<", variable, ">>>");
}
