
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int FAIL ;
 char NUL ;
 scalar_t__ NUM_EVENTS ;
 int OK ;
 scalar_t__ STRNICMP (char*,char*,int) ;
 scalar_t__ event_name2nr (char*,char**) ;
 char* p_ei ;

int
check_ei()
{
    char_u *p = p_ei;

    while (*p)
    {
 if (STRNICMP(p, "all", 3) == 0 && (p[3] == NUL || p[3] == ','))
 {
     p += 3;
     if (*p == ',')
  ++p;
 }
 else if (event_name2nr(p, &p) == NUM_EVENTS)
     return FAIL;
    }

    return OK;
}
