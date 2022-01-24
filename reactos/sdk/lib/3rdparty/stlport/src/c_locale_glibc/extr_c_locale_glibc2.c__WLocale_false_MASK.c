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
typedef  int /*<<< orphan*/  wchar_t ;
struct _Locale_numeric {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _Locale_numeric*) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

const wchar_t *FUNC2(struct _Locale_numeric *__loc, wchar_t *buf, size_t bufSize)
{ return FUNC1(FUNC0(__loc), buf, bufSize); }