
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPJ_PATH_LEN ;
 scalar_t__ malloc (int) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static char * get_file_name(char *name)
{
    char *fname;
    fname = (char*)malloc(OPJ_PATH_LEN * sizeof(char));
    fname = strtok(name, ".");
    return fname;
}
