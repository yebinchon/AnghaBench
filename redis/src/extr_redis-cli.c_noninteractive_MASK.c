#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ stdinarg; } ;

/* Variables and functions */
 TYPE_1__ config ; 
 int FUNC0 (int,char**) ; 
 char* FUNC1 () ; 
 char** FUNC2 (char**,int) ; 

__attribute__((used)) static int FUNC3(int argc, char **argv) {
    int retval = 0;
    if (config.stdinarg) {
        argv = FUNC2(argv, (argc+1)*sizeof(char*));
        argv[argc] = FUNC1();
        retval = FUNC0(argc+1, argv);
    } else {
        retval = FUNC0(argc, argv);
    }
    return retval;
}