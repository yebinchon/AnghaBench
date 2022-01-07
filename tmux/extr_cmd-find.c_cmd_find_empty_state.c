
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_find_state {int * wp; int * w; int * wl; int * s; } ;



int
cmd_find_empty_state(struct cmd_find_state *fs)
{
 if (fs->s == ((void*)0) && fs->wl == ((void*)0) && fs->w == ((void*)0) && fs->wp == ((void*)0))
  return (1);
 return (0);
}
