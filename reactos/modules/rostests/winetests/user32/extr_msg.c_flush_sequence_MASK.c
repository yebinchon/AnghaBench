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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ sequence ; 
 scalar_t__ sequence_cnt ; 
 int /*<<< orphan*/  sequence_cs ; 
 scalar_t__ sequence_size ; 

__attribute__((used)) static void FUNC4(void)
{
    FUNC0( &sequence_cs );
    FUNC2(FUNC1(), 0, sequence);
    sequence = 0;
    sequence_cnt = sequence_size = 0;
    FUNC3( &sequence_cs );
}