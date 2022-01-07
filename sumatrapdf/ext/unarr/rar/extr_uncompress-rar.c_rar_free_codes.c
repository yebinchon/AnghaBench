
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar_archive_rar_uncomp_v3 {int lengthcode; int lowoffsetcode; int offsetcode; int maincode; } ;
struct TYPE_2__ {int v2; struct ar_archive_rar_uncomp_v3 v3; } ;
struct ar_archive_rar_uncomp {int version; TYPE_1__ state; } ;


 int rar_free_code (int *) ;
 int rar_free_codes_v2 (int *) ;

__attribute__((used)) static void rar_free_codes(struct ar_archive_rar_uncomp *uncomp)
{
    struct ar_archive_rar_uncomp_v3 *uncomp_v3 = &uncomp->state.v3;

    if (uncomp->version == 2) {
        rar_free_codes_v2(&uncomp->state.v2);
        return;
    }

    rar_free_code(&uncomp_v3->maincode);
    rar_free_code(&uncomp_v3->offsetcode);
    rar_free_code(&uncomp_v3->lowoffsetcode);
    rar_free_code(&uncomp_v3->lengthcode);
}
