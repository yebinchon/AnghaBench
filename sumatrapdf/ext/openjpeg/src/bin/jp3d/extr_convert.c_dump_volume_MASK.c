#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x0; int y0; int z0; int x1; int y1; int z1; int numcomps; TYPE_2__* comps; } ;
typedef  TYPE_1__ opj_volume_t ;
struct TYPE_5__ {int dx; int dy; int dz; int prec; int sgnd; } ;
typedef  TYPE_2__ opj_volume_comp_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC1(FILE *fd, opj_volume_t * vol)
{
    int compno;
    FUNC0(fd, "volume {\n");
    FUNC0(fd, "  x0=%d, y0=%d, z0=%d, x1=%d, y1=%d, z1=%d\n", vol->x0, vol->y0,
            vol->z0, vol->x1, vol->y1,  vol->z1);
    FUNC0(fd, "  numcomps=%d\n", vol->numcomps);
    for (compno = 0; compno < vol->numcomps; compno++) {
        opj_volume_comp_t *comp = &vol->comps[compno];
        FUNC0(fd, "  comp %d {\n", compno);
        FUNC0(fd, "    dx=%d, dy=%d, dz=%d\n", comp->dx, comp->dy, comp->dz);
        FUNC0(fd, "    prec=%d\n", comp->prec);
        FUNC0(fd, "    sgnd=%d\n", comp->sgnd);
        FUNC0(fd, "  }\n");
    }
    FUNC0(fd, "}\n");
}