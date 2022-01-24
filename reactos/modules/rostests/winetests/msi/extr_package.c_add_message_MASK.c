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
struct externalui_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct externalui_message* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct externalui_message* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct externalui_message*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct externalui_message*) ; 
 struct externalui_message* sequence ; 
 int sequence_count ; 
 int sequence_size ; 

__attribute__((used)) static void FUNC4(const struct externalui_message *msg)
{
    if (!sequence)
    {
        sequence_size = 10;
        sequence = FUNC1(FUNC0(), 0, sequence_size * sizeof(*sequence));
    }
    if (sequence_count == sequence_size)
    {
        sequence_size *= 2;
        sequence = FUNC2(FUNC0(), 0, sequence, sequence_size * sizeof(*sequence));
    }

    FUNC3(sequence);

    sequence[sequence_count++] = *msg;
}