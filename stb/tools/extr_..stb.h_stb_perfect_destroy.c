
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ table_mask; scalar_t__ b_mask; int * table; int * large_bmap; } ;
typedef TYPE_1__ stb_perfect ;


 int free (int *) ;

void stb_perfect_destroy(stb_perfect *p)
{
   if (p->large_bmap) free(p->large_bmap);
   if (p->table ) free(p->table);
   p->large_bmap = ((void*)0);
   p->table = ((void*)0);
   p->b_mask = 0;
   p->table_mask = 0;
}
