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
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_2__ {int eof; int /*<<< orphan*/  offset; int /*<<< orphan*/  peek; } ;
typedef  TYPE_1__ stream_priv_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*,size_t) ; 

ssize_t FUNC3(stream_t *s, void *buf, size_t len)
{
    stream_priv_t *priv = (stream_priv_t *)s;
    ssize_t ret;

    ret = FUNC1(&priv->peek, buf, len);
    if (ret >= 0)
    {
        priv->offset += ret;
        FUNC0(ret <= (ssize_t)len);
        return ret;
    }

    ret = FUNC2(s, buf, len);
    if (ret > 0)
        priv->offset += ret;
    if (ret == 0)
        priv->eof = len != 0;
    FUNC0(ret <= (ssize_t)len);
    return ret;
}