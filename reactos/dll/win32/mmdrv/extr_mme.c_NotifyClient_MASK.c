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
struct TYPE_3__ {int /*<<< orphan*/  app_user_data; int /*<<< orphan*/  mme_handle; int /*<<< orphan*/  flags; int /*<<< orphan*/  callback; } ;
typedef  TYPE_1__ SessionInfo ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

BOOL
FUNC2(
    SessionInfo* session_info,
    DWORD message,
    DWORD_PTR parameter1,
    DWORD_PTR parameter2)
{
    return FUNC0(session_info->callback,
                          FUNC1(session_info->flags),
                          session_info->mme_handle,
                          message,
                          session_info->app_user_data,
                          parameter1,
                          parameter2);
}