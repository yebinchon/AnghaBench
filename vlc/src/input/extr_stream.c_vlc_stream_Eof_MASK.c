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
struct TYPE_2__ {int eof; } ;
typedef  TYPE_1__ stream_priv_t ;

/* Variables and functions */

bool FUNC0(const stream_t *s)
{
    const stream_priv_t *priv = (const stream_priv_t *)s;

    return priv->eof;
}