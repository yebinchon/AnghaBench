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
 unsigned char ZIPMAP_END ; 
 unsigned char* FUNC0 (unsigned char*,unsigned int) ; 

__attribute__((used)) static inline unsigned char *FUNC1(unsigned char *zm, unsigned int len) {
    zm = FUNC0(zm, len);
    zm[len-1] = ZIPMAP_END;
    return zm;
}