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
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1( uint32_t i_duration )
{
    return FUNC0(i_duration >> 16) * 3600 +
           FUNC0(i_duration >> 8 ) * 60 +
           FUNC0(i_duration      );
}