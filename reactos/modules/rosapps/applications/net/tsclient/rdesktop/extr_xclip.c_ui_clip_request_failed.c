
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int has_selection_request; int selection_request; } ;
struct TYPE_6__ {TYPE_1__ xclip; } ;
typedef TYPE_2__ RDPCLIENT ;


 int False ;
 int xclip_refuse_selection (TYPE_2__*,int *) ;

void
ui_clip_request_failed(RDPCLIENT * This)
{
 xclip_refuse_selection(This, &This->xclip.selection_request);
 This->xclip.has_selection_request = False;
}
