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
typedef  scalar_t__ uint64_t ;
struct skiptags_sys_t {scalar_t__ header_skip; } ;
struct TYPE_3__ {int /*<<< orphan*/  s; struct skiptags_sys_t* p_sys; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(stream_t *stream, uint64_t offset)
{
    const struct skiptags_sys_t *sys = stream->p_sys;

    if (FUNC0(offset + sys->header_skip < offset))
        return -1;
    return FUNC1(stream->s, sys->header_skip + offset);
}