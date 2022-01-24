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
struct TYPE_4__ {int numcomps; int z1; int z0; int x1; int x0; int y1; int y0; TYPE_2__* comps; } ;
typedef  TYPE_1__ opj_volume_t ;
struct TYPE_5__ {int w; int h; int l; int prec; int* data; scalar_t__ bigendian; scalar_t__ sgnd; int /*<<< orphan*/ * factor; int /*<<< orphan*/  dz; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; } ;
typedef  TYPE_2__ opj_volume_comp_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC7(opj_volume_t * volume, char *outfile)
{
    int w, wr, wrr, h, hr, hrr, l, lr, lrr;
    int i, j, compno, offset, sliceno;
    FILE *fdest = NULL;

    for (compno = 0; compno < volume->numcomps; compno++) {
        opj_volume_comp_t *comp = &volume->comps[compno];
        char name[256];
        int nbytes = 0;
        char *tmp = outfile;
        while (*tmp) {
            tmp++;
        }
        while (*tmp != '.') {
            tmp--;
        }
        *tmp = '\0';
        for (sliceno = 0; sliceno < volume->z1 - volume->z0; sliceno++) {

            if (volume->numcomps > 1) {
                FUNC6(name, "%s%d-%d.pgx", outfile, sliceno + 1, compno);
            } else if ((volume->z1 - volume->z0) > 1) {
                FUNC6(name, "%s%d.pgx", outfile, sliceno + 1);
            } else {
                FUNC6(name, "%s.pgx", outfile);
            }

            fdest = FUNC1(name, "wb");
            if (!fdest) {
                FUNC2(&stdout, "[ERROR] Failed to open %s for writing \n", name);
                return 1;
            }

            FUNC2(&stdout, "[INFO] Writing in %s (%s)\n", name,
                    volume->comps[0].bigendian ? "Bigendian" : "Little-endian");

            w = FUNC4(volume->x1 - volume->x0, volume->comps[compno].dx);
            wr = volume->comps[compno].w;
            wrr = FUNC5(volume->comps[compno].w, volume->comps[compno].factor[0]);

            h = FUNC4(volume->y1 - volume->y0, volume->comps[compno].dy);
            hr = volume->comps[compno].h;
            hrr = FUNC5(volume->comps[compno].h, volume->comps[compno].factor[1]);

            l = FUNC4(volume->z1 - volume->z0, volume->comps[compno].dz);
            lr = volume->comps[compno].l;
            lrr = FUNC5(volume->comps[compno].l, volume->comps[compno].factor[2]);

            FUNC2(fdest, "PG %c%c %c%d %d %d\n", comp->bigendian ? 'M' : 'L',
                    comp->bigendian ? 'L' : 'M', comp->sgnd ? '-' : '+', comp->prec, wr, hr);
            if (comp->prec <= 8) {
                nbytes = 1;
            } else if (comp->prec <= 16) {
                nbytes = 2;
            } else {
                nbytes = 4;
            }

            offset = (sliceno / lrr * l) + (sliceno % lrr);
            offset = wrr * hrr * offset;
            /*fprintf(stdout,"%d %d %d %d\n",offset,wrr*hrr,wrr,w);*/
            for (i = 0; i < wrr * hrr; i++) {
                int v = volume->comps[0].data[(i / wrr * w) + (i % wrr) + offset];
                if (volume->comps[0].bigendian) {
                    for (j = nbytes - 1; j >= 0; j--) {
                        char byte = (char)((v >> (j * 8)) & 0xff);
                        FUNC3(&byte, 1, 1, fdest);
                    }
                } else {
                    for (j = 0; j <= nbytes - 1; j++) {
                        char byte = (char)((v >> (j * 8)) & 0xff);
                        FUNC3(&byte, 1, 1, fdest);
                    }
                }
            }

            FUNC0(fdest);
        }/*for sliceno*/
    }/*for compno*/

    return 0;
}