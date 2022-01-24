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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MAX_PATH ; 

__attribute__((used)) static void     FUNC2(char* buf)
{
    char        path[MAX_PATH];

    buf[0] = '\0';
    FUNC1(sizeof(path), path);
    FUNC0(path, "wt", 0, buf);
}