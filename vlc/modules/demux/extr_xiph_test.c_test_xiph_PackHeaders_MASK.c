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
typedef  int /*<<< orphan*/  uint8_t ;
struct params_s {int /*<<< orphan*/  packets_count; int /*<<< orphan*/  packets; scalar_t__ packets_sizes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,void*,size_t) ; 
 int FUNC3 (int*,void**,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *run,
                 const uint8_t *p_extra, size_t i_extra,
                 const struct params_s *source)
{
    void *p_result;
    int i_result;

    int ret = FUNC3(&i_result, &p_result,
                               (unsigned *) source->packets_sizes,
                               source->packets, source->packets_count);
    if(ret == VLC_SUCCESS)
    {
        FUNC0((i_extra == (unsigned)i_result), FUNC1(p_result));
        FUNC0(!FUNC2(p_extra, p_result, i_extra), FUNC1(p_result));
        FUNC1(p_result);
    }
    return ret;
}