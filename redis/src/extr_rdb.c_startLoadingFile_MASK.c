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
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 char* rdbFileBeingLoaded ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

void FUNC3(FILE *fp, char* filename, int rdbflags) {
    struct stat sb;
    if (FUNC1(FUNC0(fp), &sb) == -1)
        sb.st_size = 0;
    rdbFileBeingLoaded = filename;
    FUNC2(sb.st_size, rdbflags);
}