
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static char *
StrDupShortenPath(char *PathChop, char *FilePath)
{
    int pclen = strlen(PathChop);
    if (!strncmp(FilePath, PathChop, pclen))
    {
        return strdup(FilePath+pclen);
    }
    else
    {
        return strdup(FilePath);
    }
}
