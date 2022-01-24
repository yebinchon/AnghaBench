#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  streamID ;
struct TYPE_7__ {int /*<<< orphan*/  last_id; void* consumers; void* pel; } ;
typedef  TYPE_1__ streamCG ;
struct TYPE_8__ {int /*<<< orphan*/ * cgroups; } ;
typedef  TYPE_2__ stream ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t,TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC2 () ; 
 scalar_t__ raxNotFound ; 
 TYPE_1__* FUNC3 (int) ; 

streamCG *FUNC4(stream *s, char *name, size_t namelen, streamID *id) {
    if (s->cgroups == NULL) s->cgroups = FUNC2();
    if (FUNC0(s->cgroups,(unsigned char*)name,namelen) != raxNotFound)
        return NULL;

    streamCG *cg = FUNC3(sizeof(*cg));
    cg->pel = FUNC2();
    cg->consumers = FUNC2();
    cg->last_id = *id;
    FUNC1(s->cgroups,(unsigned char*)name,namelen,cg,NULL);
    return cg;
}