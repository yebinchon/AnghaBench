
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uu_list_walk_t ;


 int list_walk_fini (int *) ;
 int uu_free (int *) ;

void
uu_list_walk_end(uu_list_walk_t *wp)
{
 list_walk_fini(wp);
 uu_free(wp);
}
