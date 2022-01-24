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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int INT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

LPWSTR FUNC4(LPCWSTR src, INT slen)
{
  DWORD len;
  LPWSTR s;
  if (!src) return NULL;
  if (slen == -1) slen = FUNC3(src);
  len = slen;
  s = FUNC1(FUNC0(), 0, (len+1)*sizeof(WCHAR));
  FUNC2(s, src, len*sizeof(WCHAR));
  s[len] = 0;
  return s;
}