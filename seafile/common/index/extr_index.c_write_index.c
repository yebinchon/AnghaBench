
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {unsigned int sec; scalar_t__ nsec; } ;
struct index_state {int cache_nr; TYPE_1__ timestamp; scalar_t__ has_modifier; struct cache_entry** cache; } ;
struct cache_header {void* hdr_entries; void* hdr_version; void* hdr_signature; } ;
struct cache_entry {int ce_flags; } ;
typedef int info ;
typedef int hdr ;
struct TYPE_15__ {int context; } ;
typedef TYPE_2__ WriteIndexInfo ;
struct TYPE_17__ {int len; struct cache_header* str; } ;
struct TYPE_16__ {scalar_t__ st_mtime; } ;
typedef TYPE_3__ SeafStat ;
typedef TYPE_4__ GString ;


 int CACHE_EXT_MODIFIER ;
 int CACHE_SIGNATURE ;
 int CE_REMOVE ;
 int G_CHECKSUM_SHA1 ;
 int TRUE ;
 scalar_t__ ce_flush (TYPE_2__*,int) ;
 scalar_t__ ce_write (TYPE_2__*,int,struct cache_header*,int) ;
 scalar_t__ ce_write_entry2 (TYPE_2__*,int,struct cache_entry*) ;
 int g_checksum_free (int ) ;
 int g_checksum_new (int ) ;
 int g_string_free (TYPE_4__*,int ) ;
 TYPE_4__* g_string_new (char*) ;
 void* htonl (int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ modifiers_to_string (TYPE_4__*,struct index_state*) ;
 scalar_t__ seaf_fstat (int,TYPE_3__*) ;
 scalar_t__ write_index_ext_header (TYPE_2__*,int,int ,int) ;

int write_index(struct index_state *istate, int newfd)
{
    WriteIndexInfo info;
    struct cache_header hdr;
    int i, removed, extended;
    struct cache_entry **cache = istate->cache;
    int entries = istate->cache_nr;
    SeafStat st;
    int ret = 0;

    memset (&info, 0, sizeof(info));

    for (i = removed = extended = 0; i < entries; i++) {
        if (cache[i]->ce_flags & CE_REMOVE)
            removed++;







    }

    hdr.hdr_signature = htonl(CACHE_SIGNATURE);

    hdr.hdr_version = htonl(4);
    hdr.hdr_entries = htonl(entries - removed);

    info.context = g_checksum_new (G_CHECKSUM_SHA1);
    if (ce_write(&info, newfd, &hdr, sizeof(hdr)) < 0) {
        ret = -1;
        goto out;
    }

    for (i = 0; i < entries; i++) {
        struct cache_entry *ce = cache[i];
        if (ce->ce_flags & CE_REMOVE)
            continue;


        if (ce_write_entry2(&info, newfd, ce) < 0) {
            ret = -1;
            goto out;
        }
    }


    if (istate->has_modifier) {
        GString *buf = g_string_new ("");
        int err;

        if (modifiers_to_string (buf, istate) < 0) {
            g_string_free (buf, TRUE);
            ret = -1;
            goto out;
        }

        err = write_index_ext_header(&info, newfd, CACHE_EXT_MODIFIER, buf->len) < 0
            || ce_write(&info, newfd, buf->str, buf->len) < 0;
        g_string_free (buf, TRUE);
        if (err) {
            ret = -1;
            goto out;
        }
    }

    if (ce_flush(&info, newfd) || seaf_fstat(newfd, &st)) {
        ret = -1;
        goto out;
    }

    istate->timestamp.sec = (unsigned int)st.st_mtime;
    istate->timestamp.nsec = 0;

out:
    g_checksum_free (info.context);
    return ret;
}
