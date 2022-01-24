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

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 scalar_t__ FUNC8 (unsigned char) ; 
 scalar_t__ FUNC9 (unsigned char) ; 
 scalar_t__ FUNC10 (unsigned char) ; 
 scalar_t__ FUNC11 (unsigned char) ; 
 unsigned char LP_EOF ; 

uint32_t FUNC12(unsigned char *p) {
    if (FUNC11(p[0])) return 1;
    if (FUNC10(p[0])) return 1+FUNC2(p);
    if (FUNC4(p[0])) return 2;
    if (FUNC5(p[0])) return 3;
    if (FUNC6(p[0])) return 4;
    if (FUNC7(p[0])) return 5;
    if (FUNC9(p[0])) return 9;
    if (FUNC3(p[0])) return 2+FUNC0(p);
    if (FUNC8(p[0])) return 5+FUNC1(p);
    if (p[0] == LP_EOF) return 1;
    return 0;
}