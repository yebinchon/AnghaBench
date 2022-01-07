
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* gint64 ;
struct TYPE_6__ {int modifier; int id; void* size; void* mtime; int mode; } ;
struct TYPE_5__ {scalar_t__ st_size; scalar_t__ st_mtime; int st_mode; } ;
typedef TYPE_1__ SeafStat ;
typedef TYPE_2__ ChangeSetDirent ;


 int S_ISREG (int ) ;
 int create_ce_mode (int ) ;
 int g_free (int ) ;
 int g_strdup (char const*) ;
 int rawdata_to_hex (unsigned char*,int ,int) ;

__attribute__((used)) static void
update_file (ChangeSetDirent *dent,
             unsigned char *sha1,
             SeafStat *st,
             const char *modifier)
{
    if (!sha1 || !st || !S_ISREG(st->st_mode))
        return;
    dent->mode = create_ce_mode(st->st_mode);
    dent->mtime = (gint64)st->st_mtime;
    dent->size = (gint64)st->st_size;
    rawdata_to_hex (sha1, dent->id, 20);

    g_free (dent->modifier);
    dent->modifier = g_strdup(modifier);
}
