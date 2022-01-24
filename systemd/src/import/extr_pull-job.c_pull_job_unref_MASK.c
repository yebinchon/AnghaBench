#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  payload; int /*<<< orphan*/  old_etags; int /*<<< orphan*/  etag; int /*<<< orphan*/  url; scalar_t__ checksum_context; int /*<<< orphan*/  compress; int /*<<< orphan*/  disk_fd; int /*<<< orphan*/  request_header; int /*<<< orphan*/  curl; int /*<<< orphan*/  glue; } ;
typedef  TYPE_1__ PullJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

PullJob* FUNC8(PullJob *j) {
        if (!j)
                return NULL;

        FUNC0(j->glue, j->curl);
        FUNC1(j->request_header);

        FUNC6(j->disk_fd);

        FUNC4(&j->compress);

        if (j->checksum_context)
                FUNC3(j->checksum_context);

        FUNC2(j->url);
        FUNC2(j->etag);
        FUNC7(j->old_etags);
        FUNC2(j->payload);
        FUNC2(j->checksum);

        return FUNC5(j);
}