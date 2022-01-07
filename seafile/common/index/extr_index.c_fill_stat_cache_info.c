
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nsec; int sec; } ;
struct TYPE_5__ {scalar_t__ nsec; int sec; } ;
struct cache_entry {int ce_size; int ce_gid; int ce_uid; int ce_ino; int ce_dev; TYPE_2__ ce_mtime; TYPE_1__ ce_ctime; } ;
struct TYPE_7__ {int st_mode; int st_size; int st_gid; int st_uid; int st_ino; int st_dev; int st_mtime; int st_ctime; } ;
typedef TYPE_3__ SeafStat ;


 scalar_t__ S_ISREG (int ) ;
 int ce_mark_uptodate (struct cache_entry*) ;

void fill_stat_cache_info(struct cache_entry *ce, SeafStat *st)
{
    ce->ce_ctime.sec = st->st_ctime;
    ce->ce_mtime.sec = st->st_mtime;
    ce->ce_ctime.nsec = 0;
    ce->ce_mtime.nsec = 0;
    ce->ce_dev = st->st_dev;
    ce->ce_ino = st->st_ino;
    ce->ce_uid = st->st_uid;
    ce->ce_gid = st->st_gid;
    ce->ce_size = st->st_size;




    if (S_ISREG(st->st_mode))
        ce_mark_uptodate(ce);
}
