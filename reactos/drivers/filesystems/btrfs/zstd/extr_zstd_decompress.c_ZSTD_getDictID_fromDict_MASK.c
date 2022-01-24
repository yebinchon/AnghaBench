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
 int FUNC0 (char const*) ; 
 int ZSTD_FRAMEIDSIZE ; 
 scalar_t__ ZSTD_MAGIC_DICTIONARY ; 

unsigned FUNC1(const void* dict, size_t dictSize)
{
    if (dictSize < 8) return 0;
    if (FUNC0(dict) != ZSTD_MAGIC_DICTIONARY) return 0;
    return FUNC0((const char*)dict + ZSTD_FRAMEIDSIZE);
}