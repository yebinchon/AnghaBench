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
struct TYPE_3__ {int len; int size; scalar_t__* buf; } ;
typedef  TYPE_1__ wstrbuf_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(wstrbuf_t *buf, LPCWSTR str, int len)
{
    if(buf->len+len >= buf->size) {
        buf->size = 2*buf->size+len;
        buf->buf = FUNC0(buf->buf, buf->size * sizeof(WCHAR));
    }

    FUNC1(buf->buf+buf->len, str, len*sizeof(WCHAR));
    buf->len += len;
    buf->buf[buf->len] = 0;
}