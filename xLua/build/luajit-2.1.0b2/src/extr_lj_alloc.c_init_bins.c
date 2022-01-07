
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sbinptr ;
typedef int mstate ;
typedef scalar_t__ bindex_t ;
struct TYPE_3__ {struct TYPE_3__* bk; struct TYPE_3__* fd; } ;


 scalar_t__ NSMALLBINS ;
 TYPE_1__* smallbin_at (int ,scalar_t__) ;

__attribute__((used)) static void init_bins(mstate m)
{

  bindex_t i;
  for (i = 0; i < NSMALLBINS; i++) {
    sbinptr bin = smallbin_at(m,i);
    bin->fd = bin->bk = bin;
  }
}
