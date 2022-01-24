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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  DOS_FS ;
typedef  int /*<<< orphan*/  DOS_FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC4(DOS_FS * fs, DOS_FILE * file, uint32_t clusters)
{
    int deleting;
    uint32_t walk, next;

    walk = FUNC0(file, fs);
    if ((deleting = !clusters))
	FUNC1(file, 0, fs);
    while (walk > 0 && walk != -1) {
	next = FUNC2(fs, walk);
	if (deleting)
	    FUNC3(fs, walk, 0);
	else if ((deleting = !--clusters))
	    FUNC3(fs, walk, -1);
	walk = next;
    }
}