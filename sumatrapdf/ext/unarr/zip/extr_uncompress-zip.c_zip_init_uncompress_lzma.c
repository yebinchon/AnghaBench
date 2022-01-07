
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int Free; int Alloc; } ;
struct TYPE_6__ {int dec; int finish; TYPE_1__ alloc; } ;
struct TYPE_5__ {TYPE_3__ lzma; } ;
struct ar_archive_zip_uncomp {TYPE_2__ state; } ;


 int LZMA_FINISH_ANY ;
 int LZMA_FINISH_END ;
 int LzmaDec_Construct (int *) ;
 int gLzma_Alloc ;
 int gLzma_Free ;

__attribute__((used)) static bool zip_init_uncompress_lzma(struct ar_archive_zip_uncomp *uncomp, uint16_t flags)
{
    uncomp->state.lzma.alloc.Alloc = gLzma_Alloc;
    uncomp->state.lzma.alloc.Free = gLzma_Free;
    uncomp->state.lzma.finish = (flags & (1 << 1)) ? LZMA_FINISH_END : LZMA_FINISH_ANY;
    LzmaDec_Construct(&uncomp->state.lzma.dec);
    return 1;
}
