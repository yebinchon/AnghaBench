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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int nBuffer; int nLen; scalar_t__ szData; } ;
typedef  TYPE_1__ ME_String ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 

void FUNC2(ME_String *s, int nVChar, int nChars)
{
  int end_ofs = nVChar + nChars;

  FUNC0(s->nBuffer); /* Not a const string */
  FUNC0(nChars >= 0);
  FUNC0(nVChar >= 0);
  FUNC0(end_ofs <= s->nLen);

  FUNC1(s->szData + nVChar, s->szData + end_ofs,
          (s->nLen - end_ofs + 1) * sizeof(WCHAR));
  s->nLen -= nChars;
}