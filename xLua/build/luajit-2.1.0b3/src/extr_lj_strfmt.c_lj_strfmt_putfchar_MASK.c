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
typedef  scalar_t__ int32_t ;
typedef  int SFormat ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  int MSize ;

/* Variables and functions */
 int STRFMT_F_LEFT ; 
 int FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

SBuf *FUNC3(SBuf *sb, SFormat sf, int32_t c)
{
  MSize width = FUNC0(sf);
  char *p = FUNC1(sb, width > 1 ? width : 1);
  if ((sf & STRFMT_F_LEFT)) *p++ = (char)c;
  while (width-- > 1) *p++ = ' ';
  if (!(sf & STRFMT_F_LEFT)) *p++ = (char)c;
  FUNC2(sb, p);
  return sb;
}