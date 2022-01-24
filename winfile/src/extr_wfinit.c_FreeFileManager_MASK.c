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
typedef  int /*<<< orphan*/  VOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  CriticalSectionPath ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ bJAPAN ; 
 scalar_t__ bUpdateRun ; 
 int /*<<< orphan*/  hEventAcledit ; 
 int /*<<< orphan*/  hEventNetLoad ; 
 int /*<<< orphan*/  hEventUpdate ; 
 int /*<<< orphan*/  hEventUpdatePartial ; 
 scalar_t__ hFont ; 
 scalar_t__ hFontStatus ; 
 scalar_t__ hMPR ; 
 scalar_t__ hNTLanman ; 
 scalar_t__ hThreadUpdate ; 
 scalar_t__ hVersion ; 
 scalar_t__ hfmifsDll ; 
 scalar_t__ hfontDriveList ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppDocBucket ; 
 int /*<<< orphan*/  ppProgBucket ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 

VOID
FUNC18()
{
   if (hThreadUpdate && bUpdateRun) {
      FUNC15();
      FUNC1(hThreadUpdate);
   }

   FUNC8(&CriticalSectionPath);

#define CLOSEHANDLE(handle) if (handle) CloseHandle(handle)

   CLOSEHANDLE(hEventNetLoad);
   CLOSEHANDLE(hEventAcledit);
   CLOSEHANDLE(hEventUpdate);
   CLOSEHANDLE(hEventUpdatePartial);

   FUNC11();
   FUNC10();

   FUNC2();

   FUNC5();
   FUNC4();
   FUNC3();
   FUNC6();

   FUNC12(ppDocBucket);
   FUNC12(ppProgBucket);

   if (&lpfnRegisterPenApp)
      FUNC16)(1, FALSE);

   FUNC7();

   if (hFont)
      FUNC9(hFont);

   if (hfontDriveList)
      FUNC9(hfontDriveList);

    // use the smaller font for Status bar so that messages fix in it.
    if( bJAPAN ) {
        if (hFontStatus)
            FUNC9(hFontStatus);
    }

   //
   // Free the fmifs junk
   //
   if (hfmifsDll)
      FUNC13(hfmifsDll);

   if (hNTLanman)
      FUNC13(hNTLanman);

   if (hMPR)
      FUNC13(hMPR);

   if (hVersion)
      FUNC13(hVersion);

	FUNC14();

#undef CLOSEHANDLE
}