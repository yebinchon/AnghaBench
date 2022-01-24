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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {scalar_t__ hModule; int /*<<< orphan*/  (* ExtProc ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ;} ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FMEVENT_UNLOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDM_EXTENSIONS ; 
 int /*<<< orphan*/  MF_BYPOSITION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* extensions ; 
 int /*<<< orphan*/  hwndFrame ; 
 size_t iNumExtensions ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 

VOID
FUNC6()
{
   INT i;
   HMENU hMenuFrame;

   FUNC2();


   hMenuFrame = FUNC3(hwndFrame);

   // we are going to delete all extensions and thus each one to delete is at the same place
   UINT posToDelete = FUNC4(IDM_EXTENSIONS);

   for (i = 0; i < iNumExtensions; i++) {
      (extensions[i].ExtProc)(NULL, FMEVENT_UNLOAD, 0L);
      FUNC0(hMenuFrame, posToDelete, MF_BYPOSITION);
      FUNC1((HANDLE)extensions[i].hModule);
   }
   iNumExtensions = 0;
}