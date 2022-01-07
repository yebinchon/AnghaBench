
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clipH ;
 int clipW ;
 scalar_t__ clipX ;
 scalar_t__ clipY ;

void
ui_reset_clip()
{
 clipX = 0;
 clipY = 0;
 clipW = 64000;
 clipH = 64000;
}
