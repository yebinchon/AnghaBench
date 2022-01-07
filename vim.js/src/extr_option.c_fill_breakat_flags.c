
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FALSE ;
 int TRUE ;
 int * breakat_flags ;
 int* p_breakat ;

__attribute__((used)) static void
fill_breakat_flags()
{
    char_u *p;
    int i;

    for (i = 0; i < 256; i++)
 breakat_flags[i] = FALSE;

    if (p_breakat != ((void*)0))
 for (p = p_breakat; *p; p++)
     breakat_flags[*p] = TRUE;
}
