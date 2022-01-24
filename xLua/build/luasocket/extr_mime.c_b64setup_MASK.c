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
typedef  scalar_t__ UC ;

/* Variables and functions */
 size_t* b64base ; 

__attribute__((used)) static void FUNC0(UC *unbase) 
{
    int i;
    for (i = 0; i <= 255; i++) unbase[i] = (UC) 255;
    for (i = 0; i < 64; i++) unbase[b64base[i]] = (UC) i;
    unbase['='] = 0;
}