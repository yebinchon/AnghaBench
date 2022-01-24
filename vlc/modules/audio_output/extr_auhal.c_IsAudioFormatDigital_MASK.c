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
typedef  int AudioFormatID ;

/* Variables and functions */
#define  kAudioFormat60958AC3 130 
#define  kAudioFormatAC3 129 
#define  kAudioFormatEnhancedAC3 128 

__attribute__((used)) static bool
FUNC0(AudioFormatID id)
{
    switch (id)
    {
        case 'IAC3':
        case 'iac3':
        case kAudioFormat60958AC3:
        case kAudioFormatAC3:
        case kAudioFormatEnhancedAC3:
            return true;
        default:
            return false;
    }
}