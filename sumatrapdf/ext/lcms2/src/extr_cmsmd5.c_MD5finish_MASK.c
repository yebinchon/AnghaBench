#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int cmsUInt32Number ;
struct TYPE_5__ {int /*<<< orphan*/  ID8; } ;
typedef  TYPE_1__ cmsProfileID ;
typedef  scalar_t__ cmsHANDLE ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_6__ {int* bits; scalar_t__ buf; int /*<<< orphan*/ * in; } ;
typedef  TYPE_2__ _cmsMD5 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
void FUNC5(cmsContext ContextID, cmsProfileID* ProfileID,  cmsHANDLE Handle)
{
    _cmsMD5* ctx = (_cmsMD5*) Handle;
    cmsUInt32Number count;
    cmsUInt8Number *p;

    count = (ctx->bits[0] >> 3) & 0x3F;

    p = ctx->in + count;
    *p++ = 0x80;

    count = 64 - 1 - count;

    if (count < 8) {

        FUNC4(p, 0, count);
        FUNC2(ctx->in, 16);
        FUNC0(ctx->buf, (cmsUInt32Number *) ctx->in);

        FUNC4(ctx->in, 0, 56);
    } else {
        FUNC4(p, 0, count - 8);
    }
    FUNC2(ctx->in, 14);

    ((cmsUInt32Number *) ctx->in)[14] = ctx->bits[0];
    ((cmsUInt32Number *) ctx->in)[15] = ctx->bits[1];

    FUNC0(ctx->buf, (cmsUInt32Number *) ctx->in);

    FUNC2((cmsUInt8Number *) ctx->buf, 4);
    FUNC3(ProfileID ->ID8, ctx->buf, 16);

    FUNC1(ContextID, ctx);
}