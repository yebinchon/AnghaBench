#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SeafileSessionClass ;

/* Variables and functions */
 int /*<<< orphan*/  G_SIGNAL_RUN_LAST ; 
 int /*<<< orphan*/  G_TYPE_NONE ; 
 int /*<<< orphan*/  G_TYPE_POINTER ; 
 size_t REPO_COMMITTED ; 
 size_t REPO_FETCHED ; 
 size_t REPO_HTTP_FETCHED ; 
 size_t REPO_HTTP_UPLOADED ; 
 size_t REPO_UPLOADED ; 
 int /*<<< orphan*/  SEAFILE_TYPE_SESSION ; 
 int /*<<< orphan*/  g_cclosure_marshal_VOID__POINTER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * signals ; 

__attribute__((used)) static void
FUNC1 (SeafileSessionClass *klass)
{

    signals[REPO_COMMITTED] =
        FUNC0 ("repo-committed", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,        /* no class singal handler */
                      NULL, NULL, /* no accumulator */
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);

    signals[REPO_FETCHED] =
        FUNC0 ("repo-fetched", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,        /* no class singal handler */
                      NULL, NULL, /* no accumulator */
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);

    signals[REPO_UPLOADED] =
        FUNC0 ("repo-uploaded", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,        /* no class singal handler */
                      NULL, NULL, /* no accumulator */
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);
    signals[REPO_HTTP_FETCHED] =
        FUNC0 ("repo-http-fetched", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,        /* no class singal handler */
                      NULL, NULL, /* no accumulator */
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);

    signals[REPO_HTTP_UPLOADED] =
        FUNC0 ("repo-http-uploaded", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,        /* no class singal handler */
                      NULL, NULL, /* no accumulator */
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);
}