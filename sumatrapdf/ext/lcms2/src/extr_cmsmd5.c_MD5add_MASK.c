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
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int cmsUInt32Number ;
typedef  scalar_t__ cmsHANDLE ;
struct TYPE_2__ {int* bits; int /*<<< orphan*/ * in; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ _cmsMD5 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
void FUNC3(cmsHANDLE Handle, cmsUInt8Number* buf, cmsUInt32Number len)
{
    _cmsMD5* ctx = (_cmsMD5*) Handle;
    cmsUInt32Number t;

    t = ctx->bits[0];
    if ((ctx->bits[0] = t + (len << 3)) < t)
        ctx->bits[1]++;

    ctx->bits[1] += len >> 29;

    t = (t >> 3) & 0x3f;

    if (t) {

        cmsUInt8Number *p = (cmsUInt8Number *) ctx->in + t;

        t = 64 - t;
        if (len < t) {
            FUNC2(p, buf, len);
            return;
        }

        FUNC2(p, buf, t);
        FUNC1(ctx->in, 16);

        FUNC0(ctx->buf, (cmsUInt32Number *) ctx->in);
        buf += t;
        len -= t;
    }

    while (len >= 64) {
        FUNC2(ctx->in, buf, 64);
        FUNC1(ctx->in, 16);
        FUNC0(ctx->buf, (cmsUInt32Number *) ctx->in);
        buf += 64;
        len -= 64;
    }

    FUNC2(ctx->in, buf, len);
}