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
typedef  int /*<<< orphan*/  attr_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ASYNC ; 
 int /*<<< orphan*/  ATTR_BROADCAST ; 
 int /*<<< orphan*/  ATTR_IDEMPOTENT ; 
 int /*<<< orphan*/  ATTR_MAYBE ; 
 int /*<<< orphan*/  ATTR_MESSAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1( const attr_list_t *attrs )
{
    unsigned int flags = 0;

    if (FUNC0( attrs, ATTR_IDEMPOTENT )) flags |= 0x0001;
    if (FUNC0( attrs, ATTR_BROADCAST )) flags |= 0x0002;
    if (FUNC0( attrs, ATTR_MAYBE )) flags |= 0x0004;
    if (FUNC0( attrs, ATTR_MESSAGE )) flags |= 0x0100;
    if (FUNC0( attrs, ATTR_ASYNC )) flags |= 0x4000;
    return flags;
}