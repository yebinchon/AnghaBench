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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 

int FUNC4(void) {
    char buf[1024];

    FILE *fp = FUNC2("/sys/kernel/mm/transparent_hugepage/enabled","r");
    if (!fp) return 0;
    if (FUNC1(buf,sizeof(buf),fp) == NULL) {
        FUNC0(fp);
        return 0;
    }
    FUNC0(fp);
    return (FUNC3(buf,"[never]") == NULL) ? 1 : 0;
}