
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ chapter; scalar_t__ page; } ;
typedef TYPE_1__ fz_location ;


 int ctx ;
 int doc ;
 TYPE_1__ fz_last_page (int ,int ) ;

__attribute__((used)) static int is_last_page(fz_location loc)
{
 fz_location last = fz_last_page(ctx, doc);
 return (loc.chapter == last.chapter && loc.page == last.page);
}
