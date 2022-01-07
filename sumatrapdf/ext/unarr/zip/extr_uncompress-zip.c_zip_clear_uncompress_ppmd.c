
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; int ctx; } ;
struct TYPE_4__ {TYPE_1__ ppmd8; } ;
struct ar_archive_zip_uncomp {TYPE_2__ state; } ;


 int Ppmd8_Free (int *,int *) ;

__attribute__((used)) static void zip_clear_uncompress_ppmd(struct ar_archive_zip_uncomp *uncomp)
{
    Ppmd8_Free(&uncomp->state.ppmd8.ctx, &uncomp->state.ppmd8.alloc);
}
