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
typedef  char WCHAR ;
struct TYPE_4__ {int NumDigits; } ;
typedef  TYPE_1__ NUMBERFMTW ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,double) ; 

__attribute__((used)) static int FUNC3(double value, int decimals, LPWSTR pszBuf, int cchBuf)
{
  static const WCHAR flfmt[] = {'%','f',0};
  WCHAR buf[64];
  NUMBERFMTW fmt;
  WCHAR decimal[8], thousand[8];
  
  FUNC2(buf, 64, flfmt, value);

  FUNC0(&fmt, decimal, sizeof decimal / sizeof (WCHAR),
                 thousand, sizeof thousand / sizeof (WCHAR));
  fmt.NumDigits = decimals;
  return FUNC1(LOCALE_USER_DEFAULT, 0, buf, &fmt, pszBuf, cchBuf);
}