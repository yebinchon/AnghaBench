
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* typelib_segdir; } ;
typedef TYPE_1__ msft_typelib_t ;
struct TYPE_5__ {int offset; int res08; int res0c; scalar_t__ length; } ;
typedef TYPE_2__ MSFT_pSeg ;


 int MSFT_SEG_MAX ;
 size_t MSFT_SEG_TYPEINFO ;

__attribute__((used)) static void ctl2_init_segdir(
 msft_typelib_t *typelib)
{
    int i;
    MSFT_pSeg *segdir;

    segdir = &typelib->typelib_segdir[MSFT_SEG_TYPEINFO];

    for (i = 0; i < MSFT_SEG_MAX; i++) {
 segdir[i].offset = -1;
 segdir[i].length = 0;
 segdir[i].res08 = -1;
 segdir[i].res0c = 0x0f;
    }
}
