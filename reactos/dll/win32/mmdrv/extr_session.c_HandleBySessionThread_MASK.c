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
typedef  int /*<<< orphan*/  SessionInfo ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

DWORD
FUNC1(
    DWORD_PTR private_handle,
    DWORD_PTR message,
    DWORD_PTR parameter)
{
    return FUNC0((SessionInfo*) private_handle,
                             message,
                             (PVOID) parameter);
}