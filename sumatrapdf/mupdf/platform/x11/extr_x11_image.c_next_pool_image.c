
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XImage ;
struct TYPE_2__ {scalar_t__ lastused; int ** pool; int display; scalar_t__ useshm; } ;


 int False ;
 scalar_t__ POOLSIZE ;
 int XFlush (int ) ;
 int XSync (int ,int ) ;
 TYPE_1__ info ;

__attribute__((used)) static XImage *
next_pool_image(void)
{
 if (info.lastused + 1 >= POOLSIZE) {
  if (info.useshm)
   XSync(info.display, False);
  else
   XFlush(info.display);
  info.lastused = 0;
 }
 return info.pool[info.lastused ++];
}
