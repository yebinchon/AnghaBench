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
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 

__attribute__((used)) static
cmsInt32Number FUNC1(void)
{
    if (!FUNC0(1.0)) return 0;
    if (!FUNC0(2.0)) return 0;
    if (!FUNC0(1.23456)) return 0;
    if (!FUNC0(0.99999)) return 0;
    if (!FUNC0(0.1234567890123456789099999)) return 0;
    if (!FUNC0(-1.0)) return 0;
    if (!FUNC0(-2.0)) return 0;
    if (!FUNC0(-1.23456)) return 0;
    if (!FUNC0(-1.1234567890123456789099999)) return 0;
    if (!FUNC0(+32767.1234567890123456789099999)) return 0;
    if (!FUNC0(-32767.1234567890123456789099999)) return 0;
    return 1;
}