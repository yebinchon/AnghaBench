
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* t; } ;
struct TYPE_6__ {TYPE_1__ v; } ;
typedef TYPE_2__ huft_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void huft_free(huft_t *p)
{
 huft_t *q;


 while (p) {
  q = (--p)->v.t;
  free(p);
  p = q;
 }
}
