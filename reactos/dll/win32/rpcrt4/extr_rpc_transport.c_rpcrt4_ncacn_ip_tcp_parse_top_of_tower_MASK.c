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
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  EPM_PROTOCOL_TCP ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,size_t,char**,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static RPC_STATUS FUNC1(const unsigned char *tower_data,
                                                         size_t tower_size,
                                                         char **networkaddr,
                                                         char **endpoint)
{
    return FUNC0(tower_data, tower_size,
                                            networkaddr, EPM_PROTOCOL_TCP,
                                            endpoint);
}