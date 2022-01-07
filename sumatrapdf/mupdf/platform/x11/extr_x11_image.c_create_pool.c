
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; int visual; } ;
struct TYPE_4__ {int ** pool; TYPE_1__ visual; int * shminfo; int display; scalar_t__ lastused; } ;


 int HEIGHT ;
 int POOLSIZE ;
 int WIDTH ;
 int * createximage (int ,int ,int *,int ,int ,int ) ;
 TYPE_2__ info ;

__attribute__((used)) static int
create_pool(void)
{
 int i;

 info.lastused = 0;

 for (i = 0; i < POOLSIZE; i++) {
  info.pool[i] = ((void*)0);
 }

 for (i = 0; i < POOLSIZE; i++) {
  info.pool[i] = createximage(info.display,
   info.visual.visual, &info.shminfo[i], info.visual.depth,
   WIDTH, HEIGHT);
  if (!info.pool[i]) {
   return 0;
  }
 }

 return 1;
}
