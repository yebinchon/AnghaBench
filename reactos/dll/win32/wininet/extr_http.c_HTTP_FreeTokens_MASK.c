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
typedef  int /*<<< orphan*/ **** LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *****) ; 

__attribute__((used)) static void FUNC1(LPWSTR * token_array)
{
    int i;
    for (i = 0; token_array[i]; i++) FUNC0(&token_array[i]);
    FUNC0(token_array);
}