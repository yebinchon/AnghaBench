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
struct TYPE_3__ {int /*<<< orphan*/ * byte_size_64; scalar_t__ value; } ;
typedef  TYPE_1__ StrFormatSizeResult ;
typedef  char* LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* StrFormatSize_results ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
  LPSTR lpszStr;
  const StrFormatSizeResult* result = StrFormatSize_results;

  while(result->value)
  {
    lpszStr = FUNC1(result->byte_size_64);

    FUNC2(lpszStr != NULL, "Dup failed\n");
    if (lpszStr)
    {
      FUNC2(!FUNC3(result->byte_size_64, lpszStr), "Copied string wrong\n");
      FUNC0(lpszStr);
    }
    result++;
  }

  /* Later versions of shlwapi return NULL for this, but earlier versions
   * returned an empty string (as Wine does).
   */
  lpszStr = FUNC1(NULL);
  FUNC2(lpszStr == NULL || *lpszStr == '\0', "NULL string returned %p\n", lpszStr);
  FUNC0(lpszStr);
}