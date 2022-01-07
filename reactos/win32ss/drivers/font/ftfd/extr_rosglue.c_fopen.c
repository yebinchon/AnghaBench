
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DPRINT1 (char*,char const*) ;

FILE *
fopen(const char *FileName, const char *Mode)
{
    DPRINT1("Freetype tries to open file %s\n", FileName);
    return ((void*)0);
}
