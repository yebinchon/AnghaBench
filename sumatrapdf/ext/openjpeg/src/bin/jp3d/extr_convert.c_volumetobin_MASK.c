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
struct TYPE_5__ {TYPE_1__* comps; scalar_t__ z0; scalar_t__ y0; scalar_t__ x0; scalar_t__ z1; scalar_t__ y1; scalar_t__ x1; } ;
typedef  TYPE_2__ opj_volume_t ;
struct TYPE_4__ {int dx; int w; int dy; int h; int dz; int l; int prec; int x0; int y0; int z0; int* data; scalar_t__ bigendian; int /*<<< orphan*/ * factor; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,int) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC7(opj_volume_t * volume, char *outfile)
{
    int w, wr, wrr, h, hr, hrr, l, lr, lrr, max;
    int i, j, compno, nbytes;
    int offset, sliceno;
    FILE *fdest = NULL;
    FILE *fimgdest = NULL;
    /*  char *imgtemp;*/
    char name[256];

    for (compno = 0; compno < 1; compno++) { /*Only one component*/

        fdest = FUNC1(outfile, "wb");
        if (!fdest) {
            FUNC2(&stdout, "[ERROR] Failed to open %s for writing\n", outfile);
            return 1;
        }
        FUNC2(&stdout, "[INFO] Writing outfile %s (%s) \n", outfile,
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

        max = (volume->comps[compno].prec <= 8) ? 255 : (1 <<
                volume->comps[compno].prec) - 1;

        volume->comps[compno].x0 = FUNC5(volume->comps[compno].x0 -
                                   FUNC4(volume->x0, volume->comps[compno].dx),
                                   volume->comps[compno].factor[0]);
        volume->comps[compno].y0 = FUNC5(volume->comps[compno].y0 -
                                   FUNC4(volume->y0, volume->comps[compno].dy),
                                   volume->comps[compno].factor[1]);
        volume->comps[compno].z0 = FUNC5(volume->comps[compno].z0 -
                                   FUNC4(volume->z0, volume->comps[compno].dz),
                                   volume->comps[compno].factor[2]);

        if (volume->comps[0].prec <= 8) {
            nbytes = 1;
        } else if (volume->comps[0].prec <= 16) {
            nbytes = 2;
        } else {
            nbytes = 4;
        }

        /*fprintf(stdout,"w %d wr %d wrr %d h %d hr %d hrr %d l %d lr %d lrr %d max %d nbytes %d\n Factor %d %d %d",w,wr,wrr,h,hr,hrr,l,lr,lrr,max,nbytes,volume->comps[compno].factor[0],volume->comps[compno].factor[1],volume->comps[compno].factor[2]);*/

        for (sliceno = 0; sliceno < lrr; sliceno++) {
            offset = (sliceno / lrr * l) + (sliceno % lrr);
            offset = wrr * hrr * offset;
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
        }

    }

    FUNC0(fdest);

    FUNC6(name, "%s.img", outfile);
    fimgdest = FUNC1(name, "w");
    if (!fimgdest) {
        FUNC2(&stdout, "[ERROR] Failed to open %s for writing\n", name);
        return 1;
    }
    FUNC2(fimgdest,
            "Bpp\t%d\nColor Map\t2\nDimensions\t%d\t%d\t%d\nResolution(mm)\t%d\t%d\t%d\t\n",
            volume->comps[0].prec, wrr, hrr, lrr, volume->comps[0].dx, volume->comps[0].dy,
            volume->comps[0].dz);

    FUNC0(fimgdest);
    return 0;
}