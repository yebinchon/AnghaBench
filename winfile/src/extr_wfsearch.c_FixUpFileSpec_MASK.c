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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__* LPWSTR ;

/* Variables and functions */
 scalar_t__ CHAR_DOT ; 
 scalar_t__ CHAR_STAR ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 scalar_t__* SZ_DOTSTAR ; 
 scalar_t__* SZ_STAR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 

VOID
FUNC2(
   LPWSTR szFileSpec)
{
  WCHAR szTemp[MAXPATHLEN+1];
  register LPWSTR p;

  if (*szFileSpec == CHAR_DOT) {
    FUNC1(szTemp, SZ_STAR);
    FUNC0(szTemp, szFileSpec);
    FUNC1(szFileSpec, szTemp);
  }


  //
  // HACK:  If there isn't a dot and the last char is a *, append ".*"
  //
  p = szFileSpec;
  while ((*p) && (*p != CHAR_DOT))
      ++p;

  if ((!*p) && (p != szFileSpec)) {
     --p;

     if (*p == CHAR_STAR)
        FUNC0(p, SZ_DOTSTAR);
  }
}