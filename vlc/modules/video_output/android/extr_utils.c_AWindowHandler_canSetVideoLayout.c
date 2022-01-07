
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_has_video_layout_listener; } ;
typedef TYPE_1__ AWindowHandler ;



bool
AWindowHandler_canSetVideoLayout(AWindowHandler *p_awh)
{
    return p_awh->b_has_video_layout_listener;
}
