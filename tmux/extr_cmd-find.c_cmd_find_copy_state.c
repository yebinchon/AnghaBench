
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_find_state {int wp; int w; int idx; int wl; int s; } ;



void
cmd_find_copy_state(struct cmd_find_state *dst, struct cmd_find_state *src)
{
 dst->s = src->s;
 dst->wl = src->wl;
 dst->idx = src->idx;
 dst->w = src->w;
 dst->wp = src->wp;
}
