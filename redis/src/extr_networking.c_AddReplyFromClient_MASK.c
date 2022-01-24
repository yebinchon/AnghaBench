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
struct TYPE_6__ {scalar_t__ bufpos; scalar_t__ reply_bytes; int /*<<< orphan*/  reply; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

void FUNC4(client *dst, client *src) {
    if (FUNC3(dst) != C_OK)
        return;
    FUNC0(dst,src->buf, src->bufpos);
    if (FUNC2(src->reply))
        FUNC1(dst->reply,src->reply);
    dst->reply_bytes += src->reply_bytes;
    src->reply_bytes = 0;
    src->bufpos = 0;
}