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
typedef  int mode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int S_IRUSR ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IWUSR ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 char** history ; 
 int history_len ; 
 int FUNC4 (int) ; 

int FUNC5(const char *filename) {
    mode_t old_umask = FUNC4(S_IXUSR|S_IRWXG|S_IRWXO);
    FILE *fp;
    int j;

    fp = FUNC2(filename,"w");
    FUNC4(old_umask);
    if (fp == NULL) return -1;
    FUNC0(filename,S_IRUSR|S_IWUSR);
    for (j = 0; j < history_len; j++)
        FUNC3(fp,"%s\n",history[j]);
    FUNC1(fp);
    return 0;
}