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
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  BlockBackend ;
typedef  TYPE_1__ BHandle ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int
FUNC1 (BlockBackend *bend,
                             BHandle *handle,
                             void *buf, int len)
{
    return (FUNC0 (handle->fd, buf, len));
}