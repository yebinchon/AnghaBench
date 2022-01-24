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
typedef  scalar_t__ TW_UINT16 ;
typedef  int /*<<< orphan*/  TW_STATUS ;
typedef  int /*<<< orphan*/  TW_IDENTITY ;

/* Variables and functions */
 int /*<<< orphan*/  DAT_STATUS ; 
 int /*<<< orphan*/  DG_CONTROL ; 
 int /*<<< orphan*/  MSG_GET ; 
 scalar_t__ TWRC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(TW_IDENTITY *appid, TW_IDENTITY *source, TW_STATUS *status)
{
    TW_UINT16 rc;
    rc = FUNC1(appid, source, DG_CONTROL, DAT_STATUS, MSG_GET, status);
    FUNC0(rc == TWRC_SUCCESS, "Condition code not available, rc %d\n", rc);
}