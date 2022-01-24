#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mode_le ;
typedef  int /*<<< orphan*/  guint32 ;
typedef  int gsize ;
struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
struct TYPE_7__ {int /*<<< orphan*/  dir_id; } ;
struct TYPE_6__ {int name_len; int /*<<< orphan*/  mode; scalar_t__ name; scalar_t__ id; } ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_2__ SeafDir ;
typedef  TYPE_3__ GList ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ G_BIG_ENDIAN ; 
 scalar_t__ G_BYTE_ORDER ; 
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6 (SeafDir *dir, GList *entries)
{
    GChecksum *ctx;
    GList *p;
    uint8_t sha1[20];
    gsize len = 20;
    SeafDirent *dent;
    guint32 mode_le;

    /* ID for empty dirs is EMPTY_SHA1. */
    if (entries == NULL) {
        FUNC4 (dir->dir_id, '0', 40);
        return;
    }

    ctx = FUNC2 (G_CHECKSUM_SHA1);
    for (p = entries; p; p = p->next) {
        dent = (SeafDirent *)p->data;
        FUNC3 (ctx, (unsigned char *)dent->id, 40);
        FUNC3 (ctx, (unsigned char *)dent->name, dent->name_len);
        /* Convert mode to little endian before compute. */
        if (G_BYTE_ORDER == G_BIG_ENDIAN)
            mode_le = FUNC0 (dent->mode);
        else
            mode_le = dent->mode;
        FUNC3 (ctx, (unsigned char *)&mode_le, sizeof(mode_le));
    }
    FUNC1 (ctx, sha1, &len);

    FUNC5 (sha1, dir->dir_id, 20);
}