#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ip_addr {scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  TCPContext; } ;
typedef  int /*<<< orphan*/  PULONG ;
typedef  TYPE_1__* PIP_INTERFACE ;

/* Variables and functions */
 int /*<<< orphan*/  ADE_ADDRMASK ; 
 int /*<<< orphan*/  ADE_UNICAST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ip_addr*,struct ip_addr*,struct ip_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

VOID
FUNC5(PIP_INTERFACE IF)
{
    struct ip_addr ipaddr;
    struct ip_addr netmask;
    struct ip_addr gw;
    
    gw.addr = 0;
    
    FUNC0(IF,
                            ADE_UNICAST,
                            (PULONG)&ipaddr.addr);
    
    FUNC0(IF,
                            ADE_ADDRMASK,
                            (PULONG)&netmask.addr);
    
    FUNC1(IF->TCPContext, &ipaddr, &netmask, &gw);
    
    if (ipaddr.addr != 0)
    {
        FUNC4(IF->TCPContext);
        FUNC2(IF->TCPContext);
    }
    else
    {
        FUNC3(IF->TCPContext);
    }
}