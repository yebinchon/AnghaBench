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
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SHLWAPI_hshlwapi ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 void* pSHLWAPI_166 ; 
 void* pSHLWAPI_17 ; 
 void* pSHLWAPI_18 ; 
 void* pSHLWAPI_184 ; 
 void* pSHLWAPI_19 ; 
 void* pSHLWAPI_20 ; 
 void* pSHLWAPI_21 ; 
 void* pSHLWAPI_212 ; 
 void* pSHLWAPI_213 ; 
 void* pSHLWAPI_214 ; 
 void* pSHLWAPI_22 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static BOOL FUNC4(void)
{
  SHLWAPI_hshlwapi = FUNC0("shlwapi.dll");

  /* SHCreateStreamOnFileEx was introduced in shlwapi v6.0 */
  if(!FUNC1(SHLWAPI_hshlwapi, "SHCreateStreamOnFileEx")){
      FUNC3("Too old shlwapi version\n");
      return FALSE;
  }

  pSHLWAPI_17 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)17);
  FUNC2(pSHLWAPI_17 != 0, "No Ordinal 17\n");
  pSHLWAPI_18 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)18);
  FUNC2(pSHLWAPI_18 != 0, "No Ordinal 18\n");
  pSHLWAPI_19 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)19);
  FUNC2(pSHLWAPI_19 != 0, "No Ordinal 19\n");
  pSHLWAPI_20 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)20);
  FUNC2(pSHLWAPI_20 != 0, "No Ordinal 20\n");
  pSHLWAPI_21 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)21);
  FUNC2(pSHLWAPI_21 != 0, "No Ordinal 21\n");
  pSHLWAPI_22 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)22);
  FUNC2(pSHLWAPI_22 != 0, "No Ordinal 22\n");
  pSHLWAPI_166 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)166);
  FUNC2(pSHLWAPI_166 != 0, "No Ordinal 166\n");
  pSHLWAPI_184 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)184);
  FUNC2(pSHLWAPI_184 != 0, "No Ordinal 184\n");
  pSHLWAPI_212 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)212);
  FUNC2(pSHLWAPI_212 != 0, "No Ordinal 212\n");
  pSHLWAPI_213 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)213);
  FUNC2(pSHLWAPI_213 != 0, "No Ordinal 213\n");
  pSHLWAPI_214 = (void *)FUNC1( SHLWAPI_hshlwapi, (LPSTR)214);
  FUNC2(pSHLWAPI_214 != 0, "No Ordinal 214\n");

  return TRUE;
}