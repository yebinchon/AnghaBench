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
struct TYPE_10__ {int numcomps; TYPE_2__* comps; scalar_t__ z1; scalar_t__ y1; scalar_t__ x1; scalar_t__ z0; scalar_t__ y0; scalar_t__ x0; } ;
typedef  TYPE_1__ opj_volume_t ;
struct TYPE_11__ {int prec; int* data; int bpp; int /*<<< orphan*/  sgnd; } ;
typedef  TYPE_2__ opj_volume_comp_t ;
struct TYPE_12__ {int prec; int bpp; int bigendian; int dx; int dy; int dz; int w; int h; int l; int /*<<< orphan*/  dcoffset; scalar_t__ sgnd; } ;
typedef  TYPE_3__ opj_volume_cmptparm_t ;
struct TYPE_13__ {int subsampling_dx; int subsampling_dy; int subsampling_dz; scalar_t__ volume_offset_z0; scalar_t__ volume_offset_y0; scalar_t__ volume_offset_x0; int /*<<< orphan*/  dcoffset; } ;
typedef  TYPE_4__ opj_cparameters_t ;
typedef  int OPJ_COLOR_SPACE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CLRSPC_GRAY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC8 (int,TYPE_3__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 
 char* FUNC16 (char*,char) ; 

opj_volume_t* FUNC17(char *fileimg, opj_cparameters_t *parameters)
{
    int subsampling_dx =  parameters->subsampling_dx;
    int subsampling_dy =  parameters->subsampling_dy;
    int subsampling_dz =  parameters->subsampling_dz;

    int i, compno, w, h, l, numcomps = 1;
    int prec, max = 0, min = 0;
    float dx, dy, dz;
    char filename[100], tmpdirpath[100], dirpath[100], *tmp;
    char line[100], datatype[100];
    int bigendian;

    FILE *f = NULL;
    FILE *fimg = NULL;
    OPJ_COLOR_SPACE color_space;
    opj_volume_cmptparm_t cmptparm; /* maximum of 1 component */
    opj_volume_t * volume = NULL;
    opj_volume_comp_t *comp = NULL;

    bigendian = 0;
    color_space = CLRSPC_GRAY;

    fimg = FUNC3(fileimg, "r");
    if (!fimg) {
        FUNC4(stderr, "[ERROR] Failed to open %s for reading !!\n", fileimg);
        return 0;
    }

    /*Fetch only the path */
    FUNC14(tmpdirpath, fileimg);
    if ((tmp = FUNC16(tmpdirpath, '/')) != NULL) {
        tmp++;
        *tmp = '\0';
        FUNC14(dirpath, tmpdirpath);
    } else {
        FUNC14(dirpath, "./");
    }

    FUNC5(fimg, 0, SEEK_SET);
    while (!FUNC1(fimg)) {
        FUNC2(line, 100, fimg);
        /*fprintf(stdout,"%s %d \n",line,feof(fimg));*/
        if (FUNC15(line, "Image", 5) == 0) {
            FUNC12(line, "%*s%*[ \t]%s", datatype);
        } else if (FUNC15(line, "File", 4) == 0) {
            FUNC12(line, "%*s %*s%*[ \t]%s", filename);
            FUNC13(dirpath, filename);
            FUNC14(filename, dirpath);
        } else if (FUNC15(line, "Min", 3) == 0) {
            FUNC12(line, "%*s %*s%*[ \t]%d%*[ \t]%d", &min, &max);
            prec = FUNC6(max - min + 1);
        } else if (FUNC15(line, "Bpp", 3) == 0) {
            FUNC12(line, "%*s%*[ \t]%d", &prec);
        } else if (FUNC15(line, "Color", 5) == 0) {
            FUNC12(line, "%*s %*s%*[ \t]%d", &color_space);
        } else if (FUNC15(line, "Dim", 3) == 0) {
            FUNC12(line, "%*s%*[ \t]%d%*[ \t]%d%*[ \t]%d", &w, &h, &l);
        } else if (FUNC15(line, "Res", 3) == 0) {
            FUNC12(line, "%*s%*[ \t]%f%*[ \t]%f%*[ \t]%f", &dx, &dy, &dz);
        }

    }
#ifdef VERBOSE
    fprintf(stdout, "[INFO] %s %d \t %d %d %d \t %f %f %f \t %d %d %d \n", filename,
            color_space, w, h, l, dx, dy, dz, max, min, prec);
#endif
    FUNC0(fimg);

    /* error control */
    if (!prec || !w || !h || !l) {
        FUNC4(stderr,
                "[ERROR] Unable to read IMG file correctly. Found some null values.");
        return NULL;
    }

    /* initialize volume components */
    FUNC7(&cmptparm, 0, sizeof(opj_volume_cmptparm_t));

    cmptparm.prec = prec;
    cmptparm.bpp = prec;
    cmptparm.sgnd = 0;
    cmptparm.bigendian = bigendian;
    cmptparm.dcoffset = parameters->dcoffset;
    cmptparm.dx = subsampling_dx;
    cmptparm.dy = subsampling_dy;
    cmptparm.dz = subsampling_dz;
    cmptparm.w = w;
    cmptparm.h = h;
    cmptparm.l = l;

    /* create the volume */
    volume = FUNC8(numcomps, &cmptparm, color_space);
    if (!volume) {
        FUNC4(stdout, "[ERROR] Unable to create volume");
        return NULL;
    }

    /* set volume offset and reference grid */
    volume->x0 = parameters->volume_offset_x0;
    volume->y0 = parameters->volume_offset_y0;
    volume->z0 = parameters->volume_offset_z0;
    volume->x1 = parameters->volume_offset_x0 + (w - 1) *   subsampling_dx + 1;
    volume->y1 = parameters->volume_offset_y0 + (h - 1) *   subsampling_dy + 1;
    volume->z1 = parameters->volume_offset_z0 + (l - 1) *   subsampling_dz + 1;

    max = 0;
    /* set volume data */
    f = FUNC3(filename, "rb");
    if (!f) {
        FUNC4(stderr, "[ERROR] Failed to open %s for reading !!\n", filename);
        FUNC0(f);
        return 0;
    }

    /* BINARY */
    for (compno = 0; compno < volume->numcomps; compno++) {
        int whl = w * h * l;
        /* set volume data */
        comp = &volume->comps[compno];

        /*if (comp->prec <= 8) {
            if (!comp->sgnd) {
                unsigned char *data = (unsigned char *) malloc(whl * sizeof(unsigned char));
                fread(data, 1, whl, f);
                for (i = 0; i < whl; i++) {
                    comp->data[i] = data[i];
                    if (comp->data[i] > max)
                        max = comp->data[i];
                }
                free(data);
            } else {
                char *data = (char *) malloc(whl);
                fread(data, 1, whl, f);
                for (i = 0; i < whl; i++) {
                    comp->data[i] = data[i];
                    if (comp->data[i] > max)
                        max = comp->data[i];
                }
                free(data);
            }
        } else if (comp->prec <= 16) {
            if (!comp->sgnd) {
                unsigned short *data = (unsigned short *) malloc(whl * sizeof(unsigned short));
                int leido = fread(data, 2, whl, f);
                if (!leido) {
                    free(data); fclose(f);
                    return NULL;
                }

                for (i = 0; i < whl; i++) {
                    if (bigendian)  //(c1 << 8) + c2;
                        comp->data[i] = data[i];
                    else{           //(c2 << 8) + c1;
                        comp->data[i] = ShortSwap(data[i]);
                    }
                    if (comp->data[i] > max)
                        max = comp->data[i];
                }
                free(data);
            } else {
                short *data = (short *) malloc(whl);
                int leido = fread(data, 2, whl, f);
                if (!leido) {
                    free(data); fclose(f);
                    return NULL;
                }
                for (i = 0; i < whl; i++) {
                    if (bigendian){ //(c1 << 8) + c2;
                        comp->data[i] = data[i];
                    }else{          //(c2 << 8) + c1;
                        comp->data[i] = (short) ShortSwap((unsigned short) data[i]);
                    }
                    if (comp->data[i] > max)
                        max = comp->data[i];
                }
                free(data);
            }
        } else {
            if (!comp->sgnd) {
                unsigned int *data = (unsigned int *) malloc(whl * sizeof(unsigned int));
                int leido = fread(data, 4, whl, f);
                if (!leido) {
                    free(data); fclose(f);
                    return NULL;
                }               for (i = 0; i < whl; i++) {
                    if (!bigendian)
                        comp->data[i] = LongSwap(data[i]);
                    else
                        comp->data[i] = data[i];
                    if (comp->data[i] > max)
                        max = comp->data[i];
                }
                free(data);
            } else {
                int leido = fread(comp->data, 4, whl, f);
                if (!leido) {
                    fclose(f);
                    return NULL;
                }
                for (i = 0; i < whl; i++) {
                    if (!bigendian)
                        comp->data[i] = (int) LongSwap((unsigned int) comp->data[i]);
                    if (comp->data[i] > max)
                        max = comp->data[i];
                }
            }
        }*/

        for (i = 0; i < whl; i++) {
            int v;
            if (comp->prec <= 8) {
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
        comp->bpp = FUNC6(max) + 1;
    }
    FUNC0(f);
    return volume;
}