
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cap; scalar_t__ len; } ;
typedef TYPE_1__ page_objects_list ;
typedef int fz_context ;


 TYPE_1__* fz_calloc (int *,int,int) ;

__attribute__((used)) static page_objects_list *
page_objects_list_create(fz_context *ctx)
{
 page_objects_list *pol = fz_calloc(ctx, 1, sizeof(*pol));

 pol->cap = 1;
 pol->len = 0;
 return pol;
}
