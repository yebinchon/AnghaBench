#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int length; char* buf; } ;
typedef  TYPE_1__ strbuf_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2(strbuf_t *s, const char *str)
{
    int space, i;

    space = FUNC0(s);

    for (i = 0; str[i]; i++) {
        if (space < 1) {
            FUNC1(s, s->length + 1);
            space = FUNC0(s);
        }

        s->buf[s->length] = str[i];
        s->length++;
        space--;
    }
}