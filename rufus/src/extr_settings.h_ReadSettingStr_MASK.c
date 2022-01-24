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
 int /*<<< orphan*/  REGKEY_HKCU ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * ini_file ; 

__attribute__((used)) static __inline char* FUNC2(const char* key) {
	return (ini_file != NULL)?FUNC0(key):FUNC1(REGKEY_HKCU, key);
}