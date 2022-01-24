#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t ptr; size_t pos; } ;
struct TYPE_6__ {TYPE_1__ buffer; } ;
struct TYPE_7__ {TYPE_2__ io; } ;
typedef  TYPE_3__ rio ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,size_t) ; 
 size_t FUNC1 (size_t) ; 

__attribute__((used)) static size_t FUNC2(rio *r, void *buf, size_t len) {
    if (FUNC1(r->io.buffer.ptr)-r->io.buffer.pos < len)
        return 0; /* not enough buffer to return len bytes. */
    FUNC0(buf,r->io.buffer.ptr+r->io.buffer.pos,len);
    r->io.buffer.pos += len;
    return 1;
}