#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct stats_buffer {int* data; int len; int size; } ;
struct stats {struct stats_buffer buf; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NC_ERROR ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static rstatus_t
FUNC2(struct stats *st)
{
    struct stats_buffer *buf;
    uint8_t *pos;

    buf = &st->buf;
    pos = buf->data + buf->len;

    pos -= 2; /* go back by 2 bytes */

    switch (pos[0]) {
    case ',':
        /* overwrite last two bytes; len remains unchanged */
        FUNC0(pos[1] == ' ');
        pos[0] = '}';
        pos[1] = ',';
        break;

    case '}':
        if (buf->len == buf->size) {
            return NC_ERROR;
        }
        /* overwrite the last byte and add a new byte */
        FUNC0(pos[1] == ',');
        pos[1] = '}';
        pos[2] = ',';
        buf->len += 1;
        break;

    default:
        FUNC1();
    }

    return NC_OK;
}