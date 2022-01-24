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
struct TYPE_3__ {scalar_t__ BytesTotal; scalar_t__ BytesTransferred; scalar_t__ FilesTotal; scalar_t__ FilesTransferred; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ BG_JOB_PROGRESS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_job ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hres;
    BG_JOB_PROGRESS progress;

    hres = FUNC0(test_job, &progress);
    FUNC1(hres == S_OK, "GetProgress failed: 0x%08x\n", hres);

    FUNC1(progress.BytesTotal == 0, "Incorrect BytesTotal: %s\n",
       FUNC2(progress.BytesTotal));
    FUNC1(progress.BytesTransferred == 0, "Incorrect BytesTransferred: %s\n",
       FUNC2(progress.BytesTransferred));
    FUNC1(progress.FilesTotal == 0, "Incorrect FilesTotal: %u\n", progress.FilesTotal);
    FUNC1(progress.FilesTransferred == 0, "Incorrect FilesTransferred %u\n", progress.FilesTransferred);
}