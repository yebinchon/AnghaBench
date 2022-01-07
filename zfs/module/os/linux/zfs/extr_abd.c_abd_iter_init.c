
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct abd_iter {int * iter_sg; int iter_offset; scalar_t__ iter_pos; scalar_t__ iter_mapsize; int * iter_mapaddr; int * iter_abd; } ;
typedef int abd_t ;
struct TYPE_2__ {int * abd_sgl; int abd_offset; } ;


 TYPE_1__ ABD_SCATTER (int *) ;
 scalar_t__ abd_is_linear (int *) ;
 int abd_verify (int *) ;

__attribute__((used)) static void
abd_iter_init(struct abd_iter *aiter, abd_t *abd, int km_type)
{
 abd_verify(abd);
 aiter->iter_abd = abd;
 aiter->iter_mapaddr = ((void*)0);
 aiter->iter_mapsize = 0;
 aiter->iter_pos = 0;
 if (abd_is_linear(abd)) {
  aiter->iter_offset = 0;
  aiter->iter_sg = ((void*)0);
 } else {
  aiter->iter_offset = ABD_SCATTER(abd).abd_offset;
  aiter->iter_sg = ABD_SCATTER(abd).abd_sgl;
 }
}
