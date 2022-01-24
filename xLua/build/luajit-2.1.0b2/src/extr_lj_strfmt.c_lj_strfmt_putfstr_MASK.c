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
struct TYPE_4__ {scalar_t__ len; } ;
typedef  int SFormat ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  scalar_t__ MSize ;
typedef  TYPE_1__ GCstr ;

/* Variables and functions */
 int STRFMT_F_LEFT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

SBuf *FUNC6(SBuf *sb, SFormat sf, GCstr *str)
{
  MSize len = str->len <= FUNC0(sf) ? str->len : FUNC0(sf);
  MSize width = FUNC1(sf);
  char *p = FUNC2(sb, width > len ? width : len);
  if ((sf & STRFMT_F_LEFT)) p = FUNC3(p, FUNC5(str), len);
  while (width-- > len) *p++ = ' ';
  if (!(sf & STRFMT_F_LEFT)) p = FUNC3(p, FUNC5(str), len);
  FUNC4(sb, p);
  return sb;
}