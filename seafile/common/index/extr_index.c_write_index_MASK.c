#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {unsigned int sec; scalar_t__ nsec; } ;
struct index_state {int cache_nr; TYPE_1__ timestamp; scalar_t__ has_modifier; struct cache_entry** cache; } ;
struct cache_header {void* hdr_entries; void* hdr_version; void* hdr_signature; } ;
struct cache_entry {int ce_flags; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_15__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ WriteIndexInfo ;
struct TYPE_17__ {int len; struct cache_header* str; } ;
struct TYPE_16__ {scalar_t__ st_mtime; } ;
typedef  TYPE_3__ SeafStat ;
typedef  TYPE_4__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_EXT_MODIFIER ; 
 int CACHE_SIGNATURE ; 
 int CE_REMOVE ; 
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int,struct cache_header*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (char*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_4__*,struct index_state*) ; 
 scalar_t__ FUNC10 (int,TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 

int FUNC12(struct index_state *istate, int newfd)
{
    WriteIndexInfo info;
    struct cache_header hdr;
    int i, removed, extended;
    struct cache_entry **cache = istate->cache;
    int entries = istate->cache_nr;
    SeafStat st;
    int ret = 0;

    FUNC8 (&info, 0, sizeof(info));

    for (i = removed = extended = 0; i < entries; i++) {
        if (cache[i]->ce_flags & CE_REMOVE)
            removed++;

        /* reduce extended entries if possible */
        /* cache[i]->ce_flags &= ~CE_EXTENDED; */
        /* if (cache[i]->ce_flags & CE_EXTENDED_FLAGS) { */
        /*     extended++; */
        /*     cache[i]->ce_flags |= CE_EXTENDED; */
        /* } */
    }

    hdr.hdr_signature = FUNC7(CACHE_SIGNATURE);
    /* Always use version 4 for newly created index files */
    hdr.hdr_version = FUNC7(4);
    hdr.hdr_entries = FUNC7(entries - removed);

    info.context = FUNC4 (G_CHECKSUM_SHA1);
    if (FUNC1(&info, newfd, &hdr, sizeof(hdr)) < 0) {
        ret = -1;
        goto out;
    }

    for (i = 0; i < entries; i++) {
        struct cache_entry *ce = cache[i];
        if (ce->ce_flags & CE_REMOVE)
            continue;
        /* if (!ce_uptodate(ce) && is_racy_timestamp(istate, ce)) */
        /*     ce_smudge_racily_clean_entry(ce); */
        if (FUNC2(&info, newfd, ce) < 0) {
            ret = -1;
            goto out;
        }
    }

    /* Write extension data here */
    if (istate->has_modifier) {
        GString *buf = FUNC6 ("");
        int err;

        if (FUNC9 (buf, istate) < 0) {
            FUNC5 (buf, TRUE);
            ret = -1;
            goto out;
        }

        err = FUNC11(&info, newfd, CACHE_EXT_MODIFIER, buf->len) < 0
            || FUNC1(&info, newfd, buf->str, buf->len) < 0;
        FUNC5 (buf, TRUE);
        if (err) {
            ret = -1;
            goto out;
        }
    }

    if (FUNC0(&info, newfd) || FUNC10(newfd, &st)) {
        ret = -1;
        goto out;
    }

    istate->timestamp.sec = (unsigned int)st.st_mtime;
    istate->timestamp.nsec = 0;

out:
    FUNC3 (info.context);
    return ret;
}