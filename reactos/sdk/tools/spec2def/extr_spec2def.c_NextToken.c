
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsSeparator (char const) ;

const char *
NextToken(const char *pc)
{

    while (!IsSeparator(*pc)) pc++;


    while (*pc == ' ' || *pc == '\t') pc++;


    if (*pc == '\n' || *pc == '\r' || *pc == 0) return 0;


    if (*pc == '#' || *pc == ';') return 0;

    return pc;
}
