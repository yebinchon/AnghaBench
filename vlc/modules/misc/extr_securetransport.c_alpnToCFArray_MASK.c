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
typedef  int /*<<< orphan*/ * CFStringRef ;
typedef  int /*<<< orphan*/ * CFMutableArrayRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFStringEncodingASCII ; 
 int /*<<< orphan*/  kCFTypeArrayCallBacks ; 

__attribute__((used)) static CFMutableArrayRef FUNC4(const char *const *alpn)
{
    CFMutableArrayRef alpnValues =
            FUNC1(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);

    for (size_t i = 0; alpn[i] != NULL; i++) {
        CFStringRef alpnVal =
                FUNC3(kCFAllocatorDefault, alpn[i], kCFStringEncodingASCII);
        if (alpnVal == NULL) {
            // Failed to convert the ALPN value to CFString, error out.
            FUNC2(alpnValues);
            return NULL;
        }
        FUNC0(alpnValues, alpnVal);
        FUNC2(alpnVal);
    }
    return alpnValues;
}