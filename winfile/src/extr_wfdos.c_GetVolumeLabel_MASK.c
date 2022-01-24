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
struct TYPE_2__ {size_t dwVolNameMax; int /*<<< orphan*/ * szVolNameMinusFour; } ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  scalar_t__ DWORD ;
typedef  size_t DRIVE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CHAR_NULL ; 
 int /*<<< orphan*/  CHAR_OPENBRACK ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  SZ_CLOSEBRACK ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  VolInfo ; 
 TYPE_1__* aDriveInfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

DWORD
FUNC3(DRIVE drive, LPTSTR* ppszVol, BOOL bBrackets)
{
   FUNC1(drive);

   *ppszVol = aDriveInfo[drive].szVolNameMinusFour+4;

   if (FUNC0(VolInfo,drive) || !**ppszVol) {

      return FUNC0(VolInfo,drive);
   }

   (*ppszVol)[aDriveInfo[drive].dwVolNameMax] = CHAR_NULL;

   if (bBrackets) {

      (*ppszVol)--;
      (*ppszVol)[0] = CHAR_OPENBRACK;

      FUNC2(*ppszVol, SZ_CLOSEBRACK);
   }
   return ERROR_SUCCESS;
}