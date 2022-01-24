#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* err_str; } ;

/* Variables and functions */
 int N_SYNC_ERROR_ID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* sync_error_info_tbl ; 

const char *
FUNC1 (int error)
{
    FUNC0 ((error >= 0 && error < N_SYNC_ERROR_ID), "Unknown error");

    return sync_error_info_tbl[error].err_str;
}