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
typedef  int /*<<< orphan*/  CTFontDescriptorRef ;
typedef  int /*<<< orphan*/  CFURLRef ;
typedef  int /*<<< orphan*/  CFStringRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 int /*<<< orphan*/  kCFURLPOSIXPathStyle ; 
 int /*<<< orphan*/  kCTFontURLAttribute ; 

char* FUNC4(CTFontDescriptorRef fontDescriptor)
{
    CFURLRef url = FUNC2(fontDescriptor, kCTFontURLAttribute);
    CFStringRef path = FUNC1(url, kCFURLPOSIXPathStyle);
    char *retPath = FUNC3(path, kCFStringEncodingUTF8);
    FUNC0(path);
    FUNC0(url);
    return retPath;
}