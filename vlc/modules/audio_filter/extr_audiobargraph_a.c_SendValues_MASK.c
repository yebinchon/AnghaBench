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
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  filter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,char*,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(filter_t *p_filter, float *value, int nbChannels)
{
    char msg[256];
    size_t len = 0;

    for (int i = 0; i < nbChannels; i++) {
        if (len >= sizeof (msg))
            break;
        len += FUNC0(msg + len, sizeof (msg) - len, "%f:", value[i]);
    }

    //msg_Dbg(p_filter, "values: %s", msg);
    FUNC1(FUNC2(p_filter), "audiobargraph_v-i_values",
                  msg);
}