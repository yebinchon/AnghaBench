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
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  size_t UC ;

/* Variables and functions */
 int /*<<< orphan*/  EQCRLF ; 
 scalar_t__ QP_PLAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* qpclass ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3(UC *input, size_t size, luaL_Buffer *buffer)
{
    size_t i;
    for (i = 0; i < size; i++) {
        if (qpclass[input[i]] == QP_PLAIN) FUNC0(buffer, input[i]);
        else FUNC2(input[i], buffer);
    }
    if (size > 0) FUNC1(buffer, EQCRLF);
    return 0;
}