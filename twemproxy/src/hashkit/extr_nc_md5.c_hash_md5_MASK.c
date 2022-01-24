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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned long,unsigned char*) ; 

uint32_t
FUNC1(const char *key, size_t key_length)
{
    unsigned char results[16];

    FUNC0((unsigned char*)key, (unsigned long)key_length, results);

    return ((uint32_t) (results[3] & 0xFF) << 24) |
           ((uint32_t) (results[2] & 0xFF) << 16) |
           ((uint32_t) (results[1] & 0xFF) << 8) |
           (results[0] & 0xFF);
}