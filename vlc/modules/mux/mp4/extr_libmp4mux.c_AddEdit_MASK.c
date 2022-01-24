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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(bo_t *elst,
                    int64_t i_movie_scaled_duration,
                    int64_t i_media_scaled_time,
                    bool b_64_ext)
{
    if(b_64_ext)
    {
        FUNC2(elst, i_movie_scaled_duration);
        FUNC2(elst, i_media_scaled_time);
    }
    else
    {
        FUNC1(elst, i_movie_scaled_duration);
        FUNC1(elst, i_media_scaled_time);
    }
    FUNC0(elst, 1);
    FUNC0(elst, 0);
}