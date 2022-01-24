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
 int de_boot ; 
 int de_count ; 
 int de_lba ; 
 int de_mbz1 ; 
 int de_mbz2 ; 
 int de_media ; 
 int de_seg ; 
 int de_sys ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void
FUNC1(void)
{
    FUNC0("de_boot: %hhu\n", de_boot);
    FUNC0("de_media: %hhu\n", de_media);
    FUNC0("de_seg: %hu\n", de_seg);
    FUNC0("de_sys: %hhu\n", de_sys);
    FUNC0("de_mbz1: %hhu\n", de_mbz1);
    FUNC0("de_count: %hu\n", de_count);
    FUNC0("de_lba: %u\n", de_lba);
    FUNC0("de_mbz2: %hu\n", de_mbz2);
}