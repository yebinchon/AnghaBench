
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cy; int cx; } ;
struct TYPE_11__ {TYPE_1__ dpi; } ;
struct TYPE_10__ {void* cy; void* cx; } ;
struct TYPE_9__ {int cy; int cx; } ;
typedef TYPE_2__ SIZEL ;
typedef TYPE_3__ SIZE ;
typedef TYPE_4__ ME_Context ;


 void* MulDiv (int ,int ,int) ;

__attribute__((used)) static void convert_sizel(const ME_Context *c, const SIZEL* szl, SIZE* sz)
{

  sz->cx = MulDiv(szl->cx, c->dpi.cx, 2540);
  sz->cy = MulDiv(szl->cy, c->dpi.cy, 2540);
}
