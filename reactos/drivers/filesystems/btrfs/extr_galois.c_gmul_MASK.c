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
typedef  size_t uint8_t ;

/* Variables and functions */
 int* gilog ; 
 size_t* glog ; 

uint8_t FUNC0(uint8_t a, uint8_t b) {
    if (a == 0 || b == 0)
        return 0;
    else
        return glog[(gilog[a] + gilog[b]) % 255];
}