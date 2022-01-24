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
typedef  int uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIMApplyImage ; 
 int /*<<< orphan*/  WIMCloseHandle ; 
 int /*<<< orphan*/  WIMCreateFile ; 
 int /*<<< orphan*/  WIMExtractImagePath ; 
 int /*<<< orphan*/  WIMGetImageInformation ; 
 int /*<<< orphan*/  WIMLoadImage ; 
 int /*<<< orphan*/  WIMRegisterMessageCallback ; 
 int /*<<< orphan*/  WIMSetTemporaryPath ; 
 int /*<<< orphan*/  WIMUnregisterMessageCallback ; 
 int WIM_HAS_7Z_EXTRACT ; 
 int WIM_HAS_API_APPLY ; 
 int WIM_HAS_API_EXTRACT ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  Wimgapi ; 
 scalar_t__ pfWIMApplyImage ; 
 scalar_t__ pfWIMCloseHandle ; 
 scalar_t__ pfWIMCreateFile ; 
 scalar_t__ pfWIMExtractImagePath ; 
 scalar_t__ pfWIMLoadImage ; 
 scalar_t__ pfWIMRegisterMessageCallback ; 
 scalar_t__ pfWIMSetTemporaryPath ; 
 scalar_t__ pfWIMUnregisterMessageCallback ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int wim_flags ; 

uint8_t FUNC4(void)
{
	FUNC1(WIMCreateFile, Wimgapi);
	FUNC1(WIMSetTemporaryPath, Wimgapi);
	FUNC1(WIMLoadImage, Wimgapi);
	FUNC1(WIMApplyImage, Wimgapi);
	FUNC1(WIMExtractImagePath, Wimgapi);
	FUNC1(WIMGetImageInformation, Wimgapi);
	FUNC1(WIMRegisterMessageCallback, Wimgapi);
	FUNC1(WIMUnregisterMessageCallback, Wimgapi);
	FUNC1(WIMCloseHandle, Wimgapi);

	if (pfWIMCreateFile && pfWIMSetTemporaryPath && pfWIMLoadImage && pfWIMExtractImagePath && pfWIMCloseHandle)
		wim_flags |= WIM_HAS_API_EXTRACT;
	if (FUNC0())
		wim_flags |= WIM_HAS_7Z_EXTRACT;
	if ((wim_flags & WIM_HAS_API_EXTRACT) && pfWIMApplyImage && pfWIMRegisterMessageCallback && pfWIMUnregisterMessageCallback)
		wim_flags |= WIM_HAS_API_APPLY;

	FUNC3("WIM extraction method(s) supported: %s%s%s", (wim_flags & WIM_HAS_7Z_EXTRACT)?"7-Zip":
		((wim_flags & WIM_HAS_API_EXTRACT)?"":"NONE"),
		(FUNC2(wim_flags) == (WIM_HAS_API_EXTRACT|WIM_HAS_7Z_EXTRACT))?", ":
		"", (wim_flags & WIM_HAS_API_EXTRACT)?"wimgapi.dll":"");
	FUNC3("WIM apply method supported: %s", (wim_flags & WIM_HAS_API_APPLY)?"wimgapi.dll":"NONE");
	return wim_flags;
}