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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ini_file ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline BOOL FUNC2(const char* key, int32_t val) {
	char str[12];
	FUNC1(str, "%d", val);
	return (FUNC0(key, str, ini_file) != NULL);
}