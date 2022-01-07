
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ chapter; scalar_t__ page; } ;
typedef TYPE_1__ fz_location ;



__attribute__((used)) static int eqloc(fz_location a, fz_location b)
{
 return a.chapter == b.chapter && a.page == b.page;
}
