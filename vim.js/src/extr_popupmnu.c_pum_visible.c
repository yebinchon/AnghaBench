
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * pum_array ;
 int pum_do_redraw ;

int
pum_visible()
{
    return !pum_do_redraw && pum_array != ((void*)0);
}
