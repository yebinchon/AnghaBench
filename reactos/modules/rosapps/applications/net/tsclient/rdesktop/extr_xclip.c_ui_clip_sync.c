
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int xclip_probe_selections (int *) ;

void
ui_clip_sync(RDPCLIENT * This)
{
 xclip_probe_selections(This);
}
