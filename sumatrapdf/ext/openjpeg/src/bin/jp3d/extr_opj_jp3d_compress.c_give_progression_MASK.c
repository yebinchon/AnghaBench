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
typedef  int /*<<< orphan*/  OPJ_PROG_ORDER ;

/* Variables and functions */
 int /*<<< orphan*/  CPRL ; 
 int /*<<< orphan*/  LRCP ; 
 int /*<<< orphan*/  PCRL ; 
 int /*<<< orphan*/  PROG_UNKNOWN ; 
 int /*<<< orphan*/  RLCP ; 
 int /*<<< orphan*/  RPCL ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 

OPJ_PROG_ORDER FUNC1(char progression[4])
{
    if (FUNC0(progression, "LRCP", 4) == 0) {
        return LRCP;
    }
    if (FUNC0(progression, "RLCP", 4) == 0) {
        return RLCP;
    }
    if (FUNC0(progression, "RPCL", 4) == 0) {
        return RPCL;
    }
    if (FUNC0(progression, "PCRL", 4) == 0) {
        return PCRL;
    }
    if (FUNC0(progression, "CPRL", 4) == 0) {
        return CPRL;
    }

    return PROG_UNKNOWN;
}