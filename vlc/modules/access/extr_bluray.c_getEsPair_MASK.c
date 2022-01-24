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
typedef  int /*<<< orphan*/  vlc_array_t ;
typedef  int /*<<< orphan*/  const es_pair_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static es_pair_t *FUNC2(vlc_array_t *p_array,
                            bool (*match)(const es_pair_t *, const void *),
                            const void *param)
{
    for (size_t i = 0; i < FUNC0(p_array); ++i)
    {
        es_pair_t *p_pair = FUNC1(p_array, i);
        if(match(p_pair, param))
            return p_pair;
    }
    return NULL;
}