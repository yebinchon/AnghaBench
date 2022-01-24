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
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  pat ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int,char*,int,int /*<<< orphan*/ ) ; 

int FUNC2(void) {
    char str[32];
    char pat[32];
    int cycles = 10000000;
    int total_matches = 0;
    while(cycles--) {
        int strlen = FUNC0() % sizeof(str);
        int patlen = FUNC0() % sizeof(pat);
        for (int j = 0; j < strlen; j++) str[j] = FUNC0() % 128;
        for (int j = 0; j < patlen; j++) pat[j] = FUNC0() % 128;
        total_matches += FUNC1(pat, patlen, str, strlen, 0);
    }
    return total_matches;
}