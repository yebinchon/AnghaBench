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
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  scalar_t__ CFIndex ;
typedef  int /*<<< orphan*/  CFArrayRef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFStringEncodingASCII ; 

__attribute__((used)) static char* FUNC3(CFArrayRef alpnArray)
{
    CFIndex count = FUNC0(alpnArray);

    if (count <= 0)
        return NULL;

    CFStringRef alpnVal = FUNC1(alpnArray, 0);
    return FUNC2(alpnVal, kCFStringEncodingASCII);
}