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
typedef  int UnitFileScope ;

/* Variables and functions */
 int /*<<< orphan*/  SYSTEM_GENERATOR_PATH ; 
#define  UNIT_FILE_GLOBAL 130 
#define  UNIT_FILE_SYSTEM 129 
#define  UNIT_FILE_USER 128 
 int /*<<< orphan*/  USER_GENERATOR_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** FUNC1 (char*,char*,char*,int /*<<< orphan*/ ) ; 

char **FUNC2(UnitFileScope scope) {

        switch (scope) {

        case UNIT_FILE_SYSTEM:
                return FUNC1("/run/systemd/system-generators",
                                "/etc/systemd/system-generators",
                                "/usr/local/lib/systemd/system-generators",
                                SYSTEM_GENERATOR_PATH);

        case UNIT_FILE_GLOBAL:
        case UNIT_FILE_USER:
                return FUNC1("/run/systemd/user-generators",
                                "/etc/systemd/user-generators",
                                "/usr/local/lib/systemd/user-generators",
                                USER_GENERATOR_PATH);

        default:
                FUNC0("Hmm, unexpected scope.");
        }
}