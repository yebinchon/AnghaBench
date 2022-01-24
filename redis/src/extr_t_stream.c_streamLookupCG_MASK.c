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
typedef  int /*<<< orphan*/  streamCG ;
struct TYPE_3__ {int /*<<< orphan*/ * cgroups; } ;
typedef  TYPE_1__ stream ;
typedef  scalar_t__ sds ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * raxNotFound ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

streamCG *FUNC2(stream *s, sds groupname) {
    if (s->cgroups == NULL) return NULL;
    streamCG *cg = FUNC0(s->cgroups,(unsigned char*)groupname,
                           FUNC1(groupname));
    return (cg == raxNotFound) ? NULL : cg;
}