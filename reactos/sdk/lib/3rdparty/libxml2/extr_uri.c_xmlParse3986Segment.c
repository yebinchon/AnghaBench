
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISA_PCHAR (char const*) ;
 int NEXT (char const*) ;

__attribute__((used)) static int
xmlParse3986Segment(const char **str, char forbid, int empty)
{
    const char *cur;

    cur = *str;
    if (!ISA_PCHAR(cur)) {
        if (empty)
     return(0);
 return(1);
    }
    while (ISA_PCHAR(cur) && (*cur != forbid))
        NEXT(cur);
    *str = cur;
    return (0);
}
