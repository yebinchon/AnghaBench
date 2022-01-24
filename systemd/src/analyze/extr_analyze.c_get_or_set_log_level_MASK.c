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
 int FUNC0 (int,char**,void*) ; 
 int FUNC1 (int,char**,void*) ; 

__attribute__((used)) static int FUNC2(int argc, char *argv[], void *userdata) {
        return (argc == 1) ? FUNC0(argc, argv, userdata) : FUNC1(argc, argv, userdata);
}