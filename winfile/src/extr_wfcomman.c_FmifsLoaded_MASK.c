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
typedef  void* PVOID ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  IDS_FMIFSLOADERR ; 
 int /*<<< orphan*/  IDS_WINFILE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int MB_ICONEXCLAMATION ; 
 int MB_OK ; 
 int MB_SYSTEMMODAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * hfmifsDll ; 
 int /*<<< orphan*/  hwndFrame ; 
 void* lpfnDiskCopy ; 
 void* lpfnFormat ; 
 void* lpfnQuerySupportedMedia ; 
 void* lpfnSetLabel ; 
 int /*<<< orphan*/  szFmifsDll ; 

BOOL
FUNC4()
{
   // Get a filename from the dialog...
   // Load the fmifs dll.

   if (hfmifsDll < (HANDLE)32) {
      hfmifsDll = FUNC2(szFmifsDll);
      if (hfmifsDll < (HANDLE)32) {
         /* FMIFS not available. */
         FUNC3(hwndFrame, IDS_WINFILE, IDS_FMIFSLOADERR, MB_OK | MB_ICONEXCLAMATION | MB_SYSTEMMODAL);
         hfmifsDll = NULL;
         return FALSE;
      }
      else {
         lpfnFormat = (PVOID)FUNC1(hfmifsDll, "Format");
         lpfnQuerySupportedMedia = (PVOID)FUNC1(hfmifsDll, "QuerySupportedMedia");

         lpfnSetLabel = (PVOID)FUNC1(hfmifsDll, "SetLabel");
         lpfnDiskCopy = (PVOID)FUNC1(hfmifsDll, "DiskCopy");
         if (!lpfnFormat || !lpfnQuerySupportedMedia ||
            !lpfnSetLabel || !lpfnDiskCopy) {

            FUNC3(hwndFrame, IDS_WINFILE, IDS_FMIFSLOADERR, MB_OK | MB_ICONEXCLAMATION | MB_SYSTEMMODAL);
            FUNC0(hfmifsDll);
            hfmifsDll = NULL;
            return FALSE;
         }
      }
   }
   return TRUE;
}