
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sec; } ;
struct TYPE_5__ {int sec; } ;
struct cache_entry {int ce_flags; int ce_mode; TYPE_2__ ce_ctime; TYPE_1__ ce_mtime; int name; } ;
struct TYPE_7__ {int st_ctime; int st_mtime; } ;
typedef TYPE_3__ SeafStat ;


 int S_IFDIR ;
 int cache_entry_size (int) ;
 struct cache_entry* calloc (int,int) ;
 int memcpy (int ,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static struct cache_entry *
create_empty_dir_index_entry (const char *path, SeafStat *st)
{
    int namelen, size;
    struct cache_entry *ce;

    namelen = strlen(path);
    size = cache_entry_size(namelen);
    ce = calloc(1, size);
    memcpy(ce->name, path, namelen);
    ce->ce_flags = namelen;

    ce->ce_mtime.sec = st->st_mtime;
    ce->ce_ctime.sec = st->st_ctime;

    ce->ce_mode = S_IFDIR;


    return ce;
}
