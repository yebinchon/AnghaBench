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
typedef  char* LPCSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static LPSTR FUNC5(LPSTR dst, LPCSTR src)
{
  DWORD len = FUNC4(dst), slen = FUNC4(src);
  LPSTR ndst = FUNC2(FUNC0(), 0, dst, (len+slen+2)*sizeof(CHAR));
  if (!ndst)
  {
    FUNC1(FUNC0(), 0, dst);
    return NULL;
  }
  ndst[len] = ',';
  FUNC3(ndst+len+1, src, slen+1);
  return ndst;
}