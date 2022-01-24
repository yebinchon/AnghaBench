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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int* spectrum_palette ; 
 int spectrum_palette_size ; 

void FUNC1(void) {
    int j;

    FUNC0("---------------------------------------------\n");
    FUNC0(". - * #          .01 .125 .25 .5 milliseconds\n");
    FUNC0("1,2,3,...,9      from 1 to 9     milliseconds\n");
    FUNC0("A,B,C,D,E        10,20,30,40,50  milliseconds\n");
    FUNC0("F,G,H,I,J        .1,.2,.3,.4,.5       seconds\n");
    FUNC0("K,L,M,N,O,P,Q,?  1,2,4,8,16,30,60,>60 seconds\n");
    FUNC0("From 0 to 100%%: ");
    for (j = 0; j < spectrum_palette_size; j++) {
        FUNC0("\033[48;5;%dm ", spectrum_palette[j]);
    }
    FUNC0("\033[0m\n");
    FUNC0("---------------------------------------------\n");
}