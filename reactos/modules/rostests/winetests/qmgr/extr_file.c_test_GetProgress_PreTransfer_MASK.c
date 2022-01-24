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
struct TYPE_3__ {scalar_t__ BytesTotal; scalar_t__ BytesTransferred; scalar_t__ Completed; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ BG_FILE_PROGRESS ;

/* Variables and functions */
 scalar_t__ BG_SIZE_UNKNOWN ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  test_file ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hres;
    BG_FILE_PROGRESS progress;

    hres = FUNC0(test_file, &progress);
    FUNC1(hres == S_OK, "GetProgress failed: %08x\n", hres);
    FUNC1(progress.BytesTotal == BG_SIZE_UNKNOWN, "Got incorrect total size: %s\n",
       FUNC2(progress.BytesTotal));
    FUNC1(progress.BytesTransferred == 0, "Got incorrect number of transferred bytes: %s\n",
       FUNC2(progress.BytesTransferred));
    FUNC1(progress.Completed == FALSE, "Got incorrect completion status\n");
}