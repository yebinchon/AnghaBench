
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cap; scalar_t__ len; } ;
typedef TYPE_1__ page_objects ;
typedef int fz_context ;


 TYPE_1__* fz_calloc (int *,int,int) ;

__attribute__((used)) static page_objects *
page_objects_create(fz_context *ctx)
{
 int initial_cap = 8;
 page_objects *po = fz_calloc(ctx, 1, sizeof(*po) + (initial_cap-1) * sizeof(int));

 po->cap = initial_cap;
 po->len = 0;
 return po;
}
