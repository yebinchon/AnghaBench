
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; int dec; } ;
struct TYPE_4__ {TYPE_1__ lzma; } ;
struct ar_archive_zip_uncomp {TYPE_2__ state; } ;


 int LzmaDec_Free (int *,int *) ;

__attribute__((used)) static void zip_clear_uncompress_lzma(struct ar_archive_zip_uncomp *uncomp)
{
    LzmaDec_Free(&uncomp->state.lzma.dec, &uncomp->state.lzma.alloc);
}
