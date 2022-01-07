
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sec; } ;
struct cache_entry {int ce_flags; int ce_mode; TYPE_1__ ce_mtime; int ce_size; int modifier; int sha1; int name; } ;
struct TYPE_5__ {int mode; int mtime; int size; int modifier; int sha1; int name; } ;
typedef TYPE_2__ DiffEntry ;


 int S_IFDIR ;
 scalar_t__ S_ISREG (int ) ;
 int cache_entry_size (int) ;
 struct cache_entry* calloc (int,int) ;
 int create_ce_mode (int ) ;
 int g_strdup (int ) ;
 int memcpy (int ,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static struct cache_entry *
cache_entry_from_diff_entry (DiffEntry *de)
{
    int size, namelen;
    struct cache_entry *ce;

    namelen = strlen(de->name);
    size = cache_entry_size(namelen);
    ce = calloc(1, size);
    memcpy(ce->name, de->name, namelen);
    ce->ce_flags = namelen;

    memcpy (ce->sha1, de->sha1, 20);
    ce->modifier = g_strdup(de->modifier);
    ce->ce_size = de->size;
    ce->ce_mtime.sec = de->mtime;

    if (S_ISREG(de->mode))
        ce->ce_mode = create_ce_mode (de->mode);
    else
        ce->ce_mode = S_IFDIR;

    return ce;
}
