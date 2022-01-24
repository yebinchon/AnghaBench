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
struct TYPE_6__ {char* buf; int length; scalar_t__ dynamic; } ;
typedef  TYPE_1__ strbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

char *FUNC3(strbuf_t *s, int *len)
{
    char *buf;

    FUNC0(s);

    FUNC2(s);

    buf = s->buf;
    if (len)
        *len = s->length;

    if (s->dynamic)
        FUNC1(s);

    return buf;
}