
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filters; int ppmd7_context; } ;
struct TYPE_4__ {TYPE_1__ v3; } ;
struct ar_archive_rar_uncomp {int version; TYPE_2__ state; int lzss; } ;


 int Ppmd7_Free (int *,int *) ;
 int gSzAlloc ;
 int lzss_cleanup (int *) ;
 int rar_clear_filters (int *) ;
 int rar_free_codes (struct ar_archive_rar_uncomp*) ;

void rar_clear_uncompress(struct ar_archive_rar_uncomp *uncomp)
{
    if (!uncomp->version)
        return;
    rar_free_codes(uncomp);
    lzss_cleanup(&uncomp->lzss);
    if (uncomp->version == 3) {
        Ppmd7_Free(&uncomp->state.v3.ppmd7_context, &gSzAlloc);
        rar_clear_filters(&uncomp->state.v3.filters);
    }
    uncomp->version = 0;
}
