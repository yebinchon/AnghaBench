
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sec; } ;
struct cache_entry {int ce_flags; int ce_mode; scalar_t__ ce_size; unsigned int ce_uid; unsigned int ce_gid; unsigned int ce_ino; int sha1; TYPE_1__ ce_mtime; int name; } ;
struct TYPE_5__ {int st_mode; scalar_t__ st_mtime; scalar_t__ st_size; scalar_t__ st_ino; scalar_t__ st_gid; scalar_t__ st_uid; } ;
typedef TYPE_2__ SeafStat ;


 int CE_REMOVE ;
 int DATA_CHANGED ;
 unsigned int INODE_CHANGED ;
 int MODE_CHANGED ;
 unsigned int MTIME_CHANGED ;
 unsigned int OWNER_CHANGED ;


 int S_IFMT ;

 int S_ISDIR (int) ;
 int S_ISLNK (int) ;
 int S_ISREG (int) ;
 int TYPE_CHANGED ;
 int is_eml_file (int ) ;
 int is_empty_blob_sha1 (int ) ;
 int seaf_warning (char*,int) ;

__attribute__((used)) static int ce_match_stat_basic(struct cache_entry *ce, SeafStat *st)
{
    unsigned int changed = 0;

    if (ce->ce_flags & CE_REMOVE)
        return MODE_CHANGED | DATA_CHANGED | TYPE_CHANGED;

    switch (ce->ce_mode & S_IFMT) {
    case 128:
        changed |= !S_ISREG(st->st_mode) ? TYPE_CHANGED : 0;




        if ((0100 & (ce->ce_mode ^ st->st_mode)))
            changed |= MODE_CHANGED;

        break;
    case 129:
        if (!S_ISLNK(st->st_mode))
            changed |= TYPE_CHANGED;
        break;
    case 130:

        if (!S_ISDIR(st->st_mode))
            changed |= TYPE_CHANGED;


        return changed;
    default:
        seaf_warning("internal error: ce_mode is %o\n", ce->ce_mode);
        return -1;
    }
    if (!is_eml_file (ce->name) && ce->ce_mtime.sec != st->st_mtime)
        changed |= MTIME_CHANGED;



    if (ce->ce_size != st->st_size)
        changed |= DATA_CHANGED;
    return changed;
}
