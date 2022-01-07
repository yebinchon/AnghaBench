
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chapter; scalar_t__ page; } ;
typedef TYPE_1__ fz_location ;



__attribute__((used)) static int is_first_page(fz_location loc)
{
 return (loc.chapter == 0 && loc.page == 0);
}
