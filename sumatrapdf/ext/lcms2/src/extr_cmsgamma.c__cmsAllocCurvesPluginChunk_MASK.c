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
struct _cmsContext_struct {int /*<<< orphan*/  MemPool; int /*<<< orphan*/ * chunks; } ;
struct TYPE_3__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ _cmsCurvesPluginChunkType ;

/* Variables and functions */
 size_t CurvesPlugin ; 
 int /*<<< orphan*/  FUNC0 (struct _cmsContext_struct*,struct _cmsContext_struct const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void FUNC3(struct _cmsContext_struct* ctx,
                                const struct _cmsContext_struct* src)
{
    FUNC1(ctx != NULL);

    if (src != NULL) {

        // Copy all linked list
       FUNC0(ctx, src);
    }
    else {
        static _cmsCurvesPluginChunkType CurvesPluginChunk = { NULL };
        ctx ->chunks[CurvesPlugin] = FUNC2(ctx ->MemPool, &CurvesPluginChunk, sizeof(_cmsCurvesPluginChunkType));
    }
}