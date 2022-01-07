
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_read_only; } ;
typedef TYPE_1__ libvlc_media_list_t ;



bool libvlc_media_list_is_readonly( libvlc_media_list_t * p_mlist )
{
    return p_mlist->b_read_only;
}
