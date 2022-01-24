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
typedef  int /*<<< orphan*/  VOID ;
typedef  int UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  PS2_CONTROL_PORT ; 
 int /*<<< orphan*/  PS2_DATA_PORT ; 

__attribute__((used)) static inline
VOID FUNC2(UCHAR Command)
{
    /* Clear the mouse queue */
    while (FUNC1(1)) ; // NOTE: Should be a IOReadB! But see r67231

    /* Send the command */
    FUNC0(PS2_CONTROL_PORT, 0xD4);
    FUNC0(PS2_DATA_PORT, Command);
}