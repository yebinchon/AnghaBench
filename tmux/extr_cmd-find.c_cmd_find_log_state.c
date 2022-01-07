
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmd_find_state {int idx; TYPE_4__* wp; TYPE_3__* w; TYPE_2__* wl; TYPE_1__* s; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_7__ {int name; int id; } ;
struct TYPE_6__ {TYPE_3__* window; int idx; } ;
struct TYPE_5__ {int name; int id; } ;


 int log_debug (char*,char const*,...) ;

__attribute__((used)) static void
cmd_find_log_state(const char *prefix, struct cmd_find_state *fs)
{
 if (fs->s != ((void*)0))
  log_debug("%s: s=$%u %s", prefix, fs->s->id, fs->s->name);
 else
  log_debug("%s: s=none", prefix);
 if (fs->wl != ((void*)0)) {
  log_debug("%s: wl=%u %d w=@%u %s", prefix, fs->wl->idx,
      fs->wl->window == fs->w, fs->w->id, fs->w->name);
 } else
  log_debug("%s: wl=none", prefix);
 if (fs->wp != ((void*)0))
  log_debug("%s: wp=%%%u", prefix, fs->wp->id);
 else
  log_debug("%s: wp=none", prefix);
 if (fs->idx != -1)
  log_debug("%s: idx=%d", prefix, fs->idx);
 else
  log_debug("%s: idx=none", prefix);
}
