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
struct TYPE_6__ {int /*<<< orphan*/ * pf_read; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(stream_t *access, void *buf, size_t len)
{
    stream_t *a = FUNC0(access);
    if (a == NULL)
        return 0;

    /* NOTE: Since we recreate the underlying access, the access method can
     * change. We need to check it. For instance, a path could point to a
     * regular file during Open() yet point to a directory here and now. */
    if (FUNC1(a->pf_read == NULL))
        return 0;

    return FUNC2(a, buf, len);
}