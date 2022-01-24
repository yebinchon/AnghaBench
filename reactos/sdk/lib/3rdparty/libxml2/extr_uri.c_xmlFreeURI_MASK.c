#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlURIPtr ;
struct TYPE_4__ {struct TYPE_4__* query_raw; struct TYPE_4__* query; struct TYPE_4__* authority; struct TYPE_4__* opaque; struct TYPE_4__* fragment; struct TYPE_4__* path; struct TYPE_4__* user; struct TYPE_4__* server; struct TYPE_4__* scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(xmlURIPtr uri) {
    if (uri == NULL) return;

    if (uri->scheme != NULL) FUNC0(uri->scheme);
    if (uri->server != NULL) FUNC0(uri->server);
    if (uri->user != NULL) FUNC0(uri->user);
    if (uri->path != NULL) FUNC0(uri->path);
    if (uri->fragment != NULL) FUNC0(uri->fragment);
    if (uri->opaque != NULL) FUNC0(uri->opaque);
    if (uri->authority != NULL) FUNC0(uri->authority);
    if (uri->query != NULL) FUNC0(uri->query);
    if (uri->query_raw != NULL) FUNC0(uri->query_raw);
    FUNC0(uri);
}