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
typedef  TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int /*<<< orphan*/ * query_raw; int /*<<< orphan*/ * query; int /*<<< orphan*/ * authority; int /*<<< orphan*/ * opaque; int /*<<< orphan*/ * fragment; int /*<<< orphan*/ * path; int /*<<< orphan*/ * user; int /*<<< orphan*/ * server; int /*<<< orphan*/ * scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(xmlURIPtr uri) {
    if (uri == NULL) return;

    if (uri->scheme != NULL) FUNC0(uri->scheme);
    uri->scheme = NULL;
    if (uri->server != NULL) FUNC0(uri->server);
    uri->server = NULL;
    if (uri->user != NULL) FUNC0(uri->user);
    uri->user = NULL;
    if (uri->path != NULL) FUNC0(uri->path);
    uri->path = NULL;
    if (uri->fragment != NULL) FUNC0(uri->fragment);
    uri->fragment = NULL;
    if (uri->opaque != NULL) FUNC0(uri->opaque);
    uri->opaque = NULL;
    if (uri->authority != NULL) FUNC0(uri->authority);
    uri->authority = NULL;
    if (uri->query != NULL) FUNC0(uri->query);
    uri->query = NULL;
    if (uri->query_raw != NULL) FUNC0(uri->query_raw);
    uri->query_raw = NULL;
}