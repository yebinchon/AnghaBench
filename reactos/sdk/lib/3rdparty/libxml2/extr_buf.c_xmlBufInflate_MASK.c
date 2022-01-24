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
typedef  TYPE_1__* xmlBufPtr ;
struct TYPE_4__ {scalar_t__ error; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 

int
FUNC1(xmlBufPtr buf, size_t len) {
    if (buf == NULL) return(-1);
    FUNC0(buf, len + buf->size);
    if (buf->error)
        return(-1);
    return(0);
}