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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 

__attribute__((used)) static void FUNC1(void)
{
    FUNC0(0, 0, 0);
    FUNC0(0, 0, 1);
    FUNC0(0, 1, 0);
    FUNC0(0, 1, 1);
    /* For Windows versions post 2003, client side, non-[in,out] STGMEDIUMs get zero-initialised.
       However since inline stubs don't set fIsIn or fIsOut this behaviour would break
       ref counting in GetDataHere_Proxy for example, as we'd end up not releasing the original
       interface.  For simplicity we don't test or implement this. */
    FUNC0(1, 1, 1);
}