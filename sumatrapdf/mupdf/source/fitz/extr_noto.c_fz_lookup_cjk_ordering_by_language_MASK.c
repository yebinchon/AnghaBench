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

/* Variables and functions */
 int FZ_ADOBE_CNS ; 
 int FZ_ADOBE_GB ; 
 int FZ_ADOBE_JAPAN ; 
 int FZ_ADOBE_KOREA ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

int
FUNC1(const char *name)
{
	if (!FUNC0(name, "zh-Hant")) return FZ_ADOBE_CNS;
	if (!FUNC0(name, "zh-TW")) return FZ_ADOBE_CNS;
	if (!FUNC0(name, "zh-HK")) return FZ_ADOBE_CNS;
	if (!FUNC0(name, "zh-Hans")) return FZ_ADOBE_GB;
	if (!FUNC0(name, "zh-CN")) return FZ_ADOBE_GB;
	if (!FUNC0(name, "ja")) return FZ_ADOBE_JAPAN;
	if (!FUNC0(name, "ko")) return FZ_ADOBE_KOREA;
	return -1;
}