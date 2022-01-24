#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* z_streamp ;
struct TYPE_7__ {scalar_t__ totalInBytes; int /*<<< orphan*/  decompState; } ;
typedef  TYPE_2__ ZWRAP_DCtx ;
struct TYPE_6__ {scalar_t__ total_out; scalar_t__ total_in; scalar_t__ state; int /*<<< orphan*/  reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ZWRAP_FORCE_ZLIB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const) ; 
 int /*<<< orphan*/  ZWRAP_useReset ; 
 int Z_OK ; 
 int Z_STREAM_ERROR ; 
 scalar_t__ g_ZWRAPdecompressionType ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(z_streamp strm)
{
    FUNC0("- ZWRAP_inflateReset_keepDict\n");
    if (g_ZWRAPdecompressionType == ZWRAP_FORCE_ZLIB || !strm->reserved)
        return FUNC2(strm);

    {   ZWRAP_DCtx* const zwd = (ZWRAP_DCtx*) strm->state;
        if (zwd == NULL) return Z_STREAM_ERROR;
        FUNC1(zwd);
        zwd->decompState = ZWRAP_useReset;
        zwd->totalInBytes = 0;
    }

    strm->total_in = 0;
    strm->total_out = 0;
    return Z_OK;
}