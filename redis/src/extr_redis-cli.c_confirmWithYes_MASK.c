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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(char *msg) {
    FUNC2("%s (type 'yes' to accept): ", msg);
    FUNC0(stdout);
    char buf[4];
    int nread = FUNC3(FUNC1(stdin),buf,4);
    buf[3] = '\0';
    return (nread != 0 && !FUNC4("yes", buf));
}