
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strtok (char*,char*) ;

__attribute__((used)) static char * get_file_name(char *name)
{
    char *fname = strtok(name, ".");
    return fname;
}
