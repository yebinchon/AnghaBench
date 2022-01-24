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
 int /*<<< orphan*/  OPJ_CPRL ; 
 int /*<<< orphan*/  OPJ_LRCP ; 
 int /*<<< orphan*/  OPJ_PCRL ; 
 int /*<<< orphan*/  OPJ_PROG_UNKNOWN ; 
 int /*<<< orphan*/  OPJ_RLCP ; 
 int /*<<< orphan*/  OPJ_RPCL ; 
 scalar_t__ FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static OPJ_PROG_ORDER FUNC1(const char progression[4])
{
    if (FUNC0(progression, "LRCP", 4) == 0) {
        return OPJ_LRCP;
    }
    if (FUNC0(progression, "RLCP", 4) == 0) {
        return OPJ_RLCP;
    }
    if (FUNC0(progression, "RPCL", 4) == 0) {
        return OPJ_RPCL;
    }
    if (FUNC0(progression, "PCRL", 4) == 0) {
        return OPJ_PCRL;
    }
    if (FUNC0(progression, "CPRL", 4) == 0) {
        return OPJ_CPRL;
    }

    return OPJ_PROG_UNKNOWN;
}