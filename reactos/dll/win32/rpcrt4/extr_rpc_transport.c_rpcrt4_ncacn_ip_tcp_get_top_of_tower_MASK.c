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
 int /*<<< orphan*/  EPM_PROTOCOL_TCP ; 
 size_t FUNC0 (unsigned char*,char const*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static size_t FUNC1(unsigned char *tower_data,
                                                   const char *networkaddr,
                                                   const char *endpoint)
{
    return FUNC0(tower_data, networkaddr,
                                          EPM_PROTOCOL_TCP, endpoint);
}