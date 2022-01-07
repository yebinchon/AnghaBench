
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int next; int current; int i_flags; int i_dts; int i_pts; } ;
typedef TYPE_1__ cc_storage_t ;
struct TYPE_6__ {int i_flags; int i_dts; int i_pts; } ;
typedef TYPE_2__ block_t ;


 int cc_Flush (int *) ;

void cc_storage_commit( cc_storage_t *p_ccs, block_t *p_pic )
{
    p_ccs->i_pts = p_pic->i_pts;
    p_ccs->i_dts = p_pic->i_dts;
    p_ccs->i_flags = p_pic->i_flags;
    p_ccs->current = p_ccs->next;
    cc_Flush( &p_ccs->next );
}
