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
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
struct pl_plane_data {int dummy; } ;
struct pl_gpu {int dummy; } ;
struct fmt_desc {int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fmt_desc const*,struct pl_plane_data*) ; 
 struct fmt_desc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pl_gpu const*,int /*<<< orphan*/ *,struct pl_plane_data*) ; 

bool FUNC3(const struct pl_gpu *gpu, vlc_fourcc_t fcc)
{
    const struct fmt_desc *desc = FUNC1(fcc);
    if (!desc)
        return false;

    struct pl_plane_data data[4];
    FUNC0(fcc, desc, data);
    for (int i = 0; i < desc->num_planes; i++) {
        if (!FUNC2(gpu, NULL, &data[i]))
            return false;
    }

    return true;
}