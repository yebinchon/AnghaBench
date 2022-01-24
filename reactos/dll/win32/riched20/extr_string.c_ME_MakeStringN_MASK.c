#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int nLen; int /*<<< orphan*/  szData; } ;
typedef  TYPE_1__ ME_String ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

ME_String *FUNC2(LPCWSTR szText, int nMaxChars)
{
  ME_String *s = FUNC0(nMaxChars);

  if (!s) return NULL;
  FUNC1(s->szData, szText, s->nLen * sizeof(WCHAR));
  return s;
}