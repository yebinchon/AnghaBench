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
typedef  char CHAR16 ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */

__attribute__((used)) static inline const CHAR16 *FUNC0(BOOLEAN b) {
        return b ? L"yes" : L"no";
}