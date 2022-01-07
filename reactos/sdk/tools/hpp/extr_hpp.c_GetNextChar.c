
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char*
GetNextChar(const char *psz)
{
    while (*psz == ' ' || *psz == '\t') psz++;
    return (char*)psz;
}
