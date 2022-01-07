
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int show_frame; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
typedef TYPE_2__ av1_OBU_frame_header_t ;



bool AV1_get_frame_visibility(const av1_OBU_frame_header_t *p_fh)
{
    return p_fh->header.show_frame;
}
