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
struct TYPE_4__ {scalar_t__ const* ptr; scalar_t__ const* end; } ;
typedef  TYPE_1__ parser_ctx_t ;
typedef  scalar_t__ WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__ const*,int) ; 
 scalar_t__* FUNC2 (TYPE_1__*,int) ; 
 int tIdentifier ; 

__attribute__((used)) static int FUNC3(parser_ctx_t *ctx, const WCHAR **ret)
{
    const WCHAR *ptr = ctx->ptr++;
    WCHAR *str;
    int len;

    while(ctx->ptr < ctx->end && FUNC0(*ctx->ptr))
        ctx->ptr++;
    len = ctx->ptr-ptr;

    str = FUNC2(ctx, (len+1)*sizeof(WCHAR));
    if(!str)
        return 0;

    FUNC1(str, ptr, (len+1)*sizeof(WCHAR));
    str[len] = 0;
    *ret = str;
    return tIdentifier;
}