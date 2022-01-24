#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  guchar ;
typedef  int gsize ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  ctime_n ;
struct TYPE_3__ {int /*<<< orphan*/  commit_id; int /*<<< orphan*/  ctime; scalar_t__ desc; scalar_t__ creator_name; scalar_t__ creator_id; scalar_t__ root_id; } ;
typedef  TYPE_1__ SeafCommit ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7 (SeafCommit* commit)
{
    GChecksum *ctx = FUNC2(G_CHECKSUM_SHA1);
    uint8_t sha1[20];    
    gint64 ctime_n;

    FUNC3 (ctx, (guchar *)commit->root_id, 41);
    FUNC3 (ctx, (guchar *)commit->creator_id, 41);
    if (commit->creator_name)
        FUNC3 (ctx, (guchar *)commit->creator_name, FUNC6(commit->creator_name)+1);
    FUNC3 (ctx, (guchar *)commit->desc, FUNC6(commit->desc)+1);

    /* convert to network byte order */
    ctime_n = FUNC4 (commit->ctime);
    FUNC3 (ctx, (guchar *)&ctime_n, sizeof(ctime_n));

    gsize len = 20;
    FUNC1 (ctx, sha1, &len);
    
    FUNC5 (sha1, commit->commit_id, 20);
    FUNC0 (ctx);
}