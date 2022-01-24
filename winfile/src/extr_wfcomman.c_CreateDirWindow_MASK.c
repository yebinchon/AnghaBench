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
typedef  scalar_t__ LPWSTR ;
typedef  long LPARAM ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DRIVE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CB_GETCURSEL ; 
 size_t CD_PATH ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FS_CHANGEDISPLAY ; 
 int /*<<< orphan*/  FS_GETFILESPEC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 size_t MAXFILENAMELEN ; 
 size_t SC_RESTORE ; 
 int /*<<< orphan*/  FUNC12 (size_t) ; 
 size_t FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,...) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  TC_SETDRIVE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_MDIACTIVATE ; 
 int /*<<< orphan*/  WM_SYSCOMMAND ; 
 size_t cDrives ; 
 int /*<<< orphan*/  hwndDriveList ; 
 int /*<<< orphan*/  hwndMDIClient ; 
 int /*<<< orphan*/  hwndSearch ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__* rgiDrive ; 
 int /*<<< orphan*/  szStarDotStar ; 

HWND
FUNC18(
   register LPWSTR szPath,
   BOOL bReplaceOpen,
   HWND hwndActive)
{
   register HWND hwndT;
   INT dxSplit;

   if (hwndActive == hwndSearch) {
	   bReplaceOpen = FALSE;
	   dxSplit = -1;
   } else {
	   dxSplit = FUNC5(hwndActive);
   }

   //
   // Is a window with this path already open?
   //
   if (!bReplaceOpen && (hwndT = FUNC9(szPath, TRUE, FALSE))) {

      FUNC13(hwndMDIClient, WM_MDIACTIVATE, FUNC4(0, 0, hwndT));
      if (FUNC8(hwndT))
         FUNC13(hwndT, WM_SYSCOMMAND, SC_RESTORE, 0L);
      return hwndT;
   }

   //
   // Are we replacing the contents of the currently active child?
   //
   if (bReplaceOpen) {
	   FUNC1(szPath, 1);     // make sure

	   DRIVE drive = FUNC3(szPath);
	   for (INT i = 0; i<cDrives; i++)
	   {
		   if (drive == rgiDrive[i])
		   {
			   // if not already selected, do so now
			   if (i != FUNC13(hwndDriveList, CB_GETCURSEL, i, 0L))
			   {
				   FUNC12(i);
			   }
			   break;
		   }
	   }

	   if ((hwndT = FUNC6(hwndActive)))
	   {
		   FUNC0(szPath);                   // default to all files
		   FUNC13(hwndT, FS_GETFILESPEC, MAXFILENAMELEN, (LPARAM)(szPath + FUNC17(szPath)));
		   FUNC13(hwndT, FS_CHANGEDISPLAY, CD_PATH, (LPARAM)szPath);
		   FUNC14(szPath);
	   }

	   //
	   // update the tree if necessary
	   //
	   ;
	   if ((hwndT = FUNC7(hwndActive)))
	   {
		   FUNC13(hwndT, TC_SETDRIVE, 0, (LPARAM)(szPath));
	   }

	   //
	   // Update the status in case we are "reading"
	   //
	   FUNC15(hwndActive);

	   return hwndActive;
   }

   FUNC0(szPath);                   // default to all files
   FUNC16(szPath, szStarDotStar);

   //
   // create tree and/or dir based on current window split
   //
   hwndActive = FUNC2(szPath, CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, dxSplit);

   // call TC_SETDRIVE like use of CreateTreeWindow in NewTree()
   if (hwndActive && (hwndT = FUNC7(hwndActive)))
	   FUNC13(hwndT,
		   TC_SETDRIVE,
		   FUNC10(FUNC11(FALSE, 0), TRUE),
		   0L);

   return hwndActive;
}