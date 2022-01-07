
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* rm_col; } ;
typedef TYPE_1__ raidz_map_t ;
struct TYPE_5__ {int rc_size; int rc_abd; } ;
typedef TYPE_2__ raidz_col_t ;


 int abd_iterate_func (int ,int ,int ,int ,int *) ;
 int init_rand ;

__attribute__((used)) static void
corrupt_colums(raidz_map_t *rm, const int *tgts, const int cnt)
{
 int i;
 raidz_col_t *col;

 for (i = 0; i < cnt; i++) {
  col = &rm->rm_col[tgts[i]];
  abd_iterate_func(col->rc_abd, 0, col->rc_size, init_rand, ((void*)0));
 }
}
