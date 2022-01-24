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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int KEY_MAX_LEN ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * currentKeyName ; 

LPTSTR FUNC7(LPTSTR lpLine)
{
  LPTSTR keyNameBeg;
  TCHAR  lpLineCopy[KEY_MAX_LEN];

  if (lpLine == NULL)
    return NULL;

  FUNC5(lpLineCopy, lpLine);
  keyNameBeg = FUNC4(lpLineCopy, FUNC3('\\'));    /* The key name start by '\' */
  if (keyNameBeg) {
      LPTSTR keyNameEnd;

      keyNameBeg++;                             /* is not part of the name */
      keyNameEnd = FUNC4(lpLineCopy, FUNC3(']'));
      if (keyNameEnd) {
          *keyNameEnd = FUNC3('\0');               /* remove ']' from the key name */
      }
  } else {
      keyNameBeg = lpLineCopy + FUNC6(lpLineCopy); /* branch - empty string */
  }
  currentKeyName = FUNC2(FUNC1(), 0, (FUNC6(keyNameBeg)+1)*sizeof(TCHAR));
  FUNC0(currentKeyName);
  FUNC5(currentKeyName, keyNameBeg);
  return currentKeyName;
}