#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int x0; int y0; int x1; int y1; TYPE_2__* comps; } ;
typedef  TYPE_1__ opj_image_t ;
struct TYPE_11__ {unsigned char* data; int prec; scalar_t__ bpp; int /*<<< orphan*/  sgnd; } ;
typedef  TYPE_2__ opj_image_comp_t ;
struct TYPE_12__ {int x0; int y0; int w; int h; int sgnd; int prec; int bpp; int dx; int dy; } ;
typedef  TYPE_3__ opj_image_cmptparm_t ;
struct TYPE_13__ {int image_offset_x0; int image_offset_y0; int subsampling_dx; int subsampling_dy; } ;
typedef  TYPE_4__ opj_cparameters_t ;
typedef  int /*<<< orphan*/  OPJ_COLOR_SPACE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CLRSPC_GRAY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,int*,char*,int*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC8 (int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

opj_image_t* FUNC12(const char *filename, opj_cparameters_t *parameters)
{
    FILE *f = NULL;
    int w, h, prec;
    int i, numcomps, max;
    OPJ_COLOR_SPACE color_space;
    opj_image_cmptparm_t cmptparm;  /* maximum of 1 component  */
    opj_image_t * image = NULL;
    int adjustS, ushift, dshift, force8;

    char endian1, endian2, sign;
    char signtmp[32];

    char temp[32];
    int bigendian;
    opj_image_comp_t *comp = NULL;

    numcomps = 1;
    color_space = CLRSPC_GRAY;

    FUNC7(&cmptparm, 0, sizeof(opj_image_cmptparm_t));

    max = 0;

    f = FUNC2(filename, "rb");
    if (!f) {
        FUNC3(stderr, "Failed to open %s for reading !\n", filename);
        return NULL;
    }

    FUNC5(f, 0, SEEK_SET);
    if (FUNC4(f, "PG%[ \t]%c%c%[ \t+-]%d%[ \t]%d%[ \t]%d", temp, &endian1,
               &endian2, signtmp, &prec, temp, &w, temp, &h) != 9) {
        FUNC3(stderr,
                "ERROR: Failed to read the right number of element from the fscanf() function!\n");
        FUNC0(f);
        return NULL;
    }

    i = 0;
    sign = '+';
    while (signtmp[i] != '\0') {
        if (signtmp[i] == '-') {
            sign = '-';
        }
        i++;
    }

    FUNC1(f);
    if (endian1 == 'M' && endian2 == 'L') {
        bigendian = 1;
    } else if (endian2 == 'M' && endian1 == 'L') {
        bigendian = 0;
    } else {
        FUNC3(stderr, "Bad pgx header, please check input file\n");
        FUNC0(f);
        return NULL;
    }

    /* initialize image component */

    cmptparm.x0 = parameters->image_offset_x0;
    cmptparm.y0 = parameters->image_offset_y0;
    cmptparm.w = !cmptparm.x0 ? (w - 1) * parameters->subsampling_dx + 1 :
                 cmptparm.x0 + (w - 1) * parameters->subsampling_dx + 1;
    cmptparm.h = !cmptparm.y0 ? (h - 1) * parameters->subsampling_dy + 1 :
                 cmptparm.y0 + (h - 1) * parameters->subsampling_dy + 1;

    if (sign == '-') {
        cmptparm.sgnd = 1;
    } else {
        cmptparm.sgnd = 0;
    }
    if (prec < 8) {
        force8 = 1;
        ushift = 8 - prec;
        dshift = prec - ushift;
        if (cmptparm.sgnd) {
            adjustS = (1 << (prec - 1));
        } else {
            adjustS = 0;
        }
        cmptparm.sgnd = 0;
        prec = 8;
    } else {
        ushift = dshift = force8 = adjustS = 0;
    }

    cmptparm.prec = prec;
    cmptparm.bpp = prec;
    cmptparm.dx = parameters->subsampling_dx;
    cmptparm.dy = parameters->subsampling_dy;

    /* create the image */
    image = FUNC8(numcomps, &cmptparm, color_space);
    if (!image) {
        FUNC0(f);
        return NULL;
    }
    /* set image offset and reference grid */
    image->x0 = cmptparm.x0;
    image->y0 = cmptparm.x0;
    image->x1 = cmptparm.w;
    image->y1 = cmptparm.h;

    /* set image data */

    comp = &image->comps[0];

    for (i = 0; i < w * h; i++) {
        int v;
        if (force8) {
            v = FUNC9(f) + adjustS;
            v = (v << ushift) + (v >> dshift);
            comp->data[i] = (unsigned char)v;

            if (v > max) {
                max = v;
            }

            continue;
        }
        if (comp->prec == 8) {
            if (!comp->sgnd) {
                v = FUNC9(f);
            } else {
                v = (char) FUNC9(f);
            }
        } else if (comp->prec <= 16) {
            if (!comp->sgnd) {
                v = FUNC11(f, bigendian);
            } else {
                v = (short) FUNC11(f, bigendian);
            }
        } else {
            if (!comp->sgnd) {
                v = FUNC10(f, bigendian);
            } else {
                v = (int) FUNC10(f, bigendian);
            }
        }
        if (v > max) {
            max = v;
        }
        comp->data[i] = v;
    }
    FUNC0(f);
    comp->bpp = FUNC6(max) + 1;

    return image;
}