#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct _cmsContext_struct {int /*<<< orphan*/  MemPool; void** chunks; } ;
struct TYPE_2__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ _cmsInterpPluginChunkType ;

/* Variables and functions */
 size_t InterpPlugin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*,int) ; 

void FUNC2(struct _cmsContext_struct* ctx, const struct _cmsContext_struct* src)
{
    void* from;

    FUNC0(ctx != NULL);

    if (src != NULL) {
        from = src ->chunks[InterpPlugin];
    }
    else {
        static _cmsInterpPluginChunkType InterpPluginChunk = { NULL };

        from = &InterpPluginChunk;
    }

    FUNC0(from != NULL);
    ctx ->chunks[InterpPlugin] = FUNC1(ctx ->MemPool, from, sizeof(_cmsInterpPluginChunkType));
}