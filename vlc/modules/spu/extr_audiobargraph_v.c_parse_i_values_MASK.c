#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nbChannels; int scale; int /*<<< orphan*/ * i_values; } ;
typedef  TYPE_1__ BarGraph_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (float) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*,char**) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(BarGraph_t *p_BarGraph, char *i_values)
{
    char delim[] = ":";
    char* tok;

    p_BarGraph->nbChannels = 0;
    FUNC2(p_BarGraph->i_values);
    p_BarGraph->i_values = NULL;
    char *res = FUNC5(i_values, delim, &tok);
    while (res != NULL) {
        p_BarGraph->nbChannels++;
        p_BarGraph->i_values = FUNC6(p_BarGraph->i_values,
                                          p_BarGraph->nbChannels*sizeof(int));
        float db = FUNC4(FUNC1(res)) * 20;
        p_BarGraph->i_values[p_BarGraph->nbChannels-1] = FUNC0(FUNC3(db)*p_BarGraph->scale, 0, p_BarGraph->scale);
        res = FUNC5(NULL, delim, &tok);
    }
}