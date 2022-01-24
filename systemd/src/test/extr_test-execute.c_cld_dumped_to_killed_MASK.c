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
 int CLD_DUMPED ; 
 int CLD_KILLED ; 

__attribute__((used)) static int FUNC0(int code) {
        /* Depending on the system, seccomp version, … some signals might result in dumping, others in plain
         * killing. Let's ignore the difference here, and map both cases to CLD_KILLED */
        return code == CLD_DUMPED ? CLD_KILLED : code;
}