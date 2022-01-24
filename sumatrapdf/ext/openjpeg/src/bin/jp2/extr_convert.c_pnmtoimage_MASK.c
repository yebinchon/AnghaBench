#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pnm_header {int height; int width; int format; int depth; int maxval; scalar_t__ bw; scalar_t__ rgba; scalar_t__ rgb; scalar_t__ graya; scalar_t__ gray; void* h; void* w; void* dy; void* dx; scalar_t__ sgnd; void* bpp; void* prec; int /*<<< orphan*/  ok; } ;
struct TYPE_9__ {TYPE_1__* comps; void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_2__ opj_image_t ;
typedef  struct pnm_header opj_image_cmptparm_t ;
struct TYPE_10__ {int subsampling_dx; int subsampling_dy; scalar_t__ image_offset_y0; scalar_t__ image_offset_x0; } ;
typedef  TYPE_3__ opj_cparameters_t ;
struct TYPE_8__ {int* data; } ;
typedef  void* OPJ_UINT32 ;
typedef  int OPJ_INT32 ;
typedef  int /*<<< orphan*/  OPJ_COLOR_SPACE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  OPJ_CLRSPC_GRAY ; 
 int /*<<< orphan*/  OPJ_CLRSPC_SRGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct pnm_header*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_2__* FUNC8 (void*,struct pnm_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct pnm_header*) ; 
 int /*<<< orphan*/  stderr ; 

opj_image_t* FUNC11(const char *filename, opj_cparameters_t *parameters)
{
    int subsampling_dx = parameters->subsampling_dx;
    int subsampling_dy = parameters->subsampling_dy;

    FILE *fp = NULL;
    int i, compno, numcomps, w, h, prec, format;
    OPJ_COLOR_SPACE color_space;
    opj_image_cmptparm_t cmptparm[4]; /* RGBA: max. 4 components */
    opj_image_t * image = NULL;
    struct pnm_header header_info;

    if ((fp = FUNC1(filename, "rb")) == NULL) {
        FUNC2(stderr, "pnmtoimage:Failed to open %s for reading!\n", filename);
        return NULL;
    }
    FUNC7(&header_info, 0, sizeof(struct pnm_header));

    FUNC10(fp, &header_info);

    if (!header_info.ok) {
        FUNC0(fp);
        return NULL;
    }

    /* This limitation could be removed by making sure to use size_t below */
    if (header_info.height != 0 &&
            header_info.width > INT_MAX / header_info.height) {
        FUNC2(stderr, "pnmtoimage:Image %dx%d too big!\n",
                header_info.width, header_info.height);
        FUNC0(fp);
        return NULL;
    }

    format = header_info.format;

    switch (format) {
    case 1: /* ascii bitmap */
    case 4: /* raw bitmap */
        numcomps = 1;
        break;

    case 2: /* ascii greymap */
    case 5: /* raw greymap */
        numcomps = 1;
        break;

    case 3: /* ascii pixmap */
    case 6: /* raw pixmap */
        numcomps = 3;
        break;

    case 7: /* arbitrary map */
        numcomps = header_info.depth;
        break;

    default:
        FUNC0(fp);
        return NULL;
    }
    if (numcomps < 3) {
        color_space = OPJ_CLRSPC_GRAY;    /* GRAY, GRAYA */
    } else {
        color_space = OPJ_CLRSPC_SRGB;    /* RGB, RGBA */
    }

    prec = FUNC6(header_info.maxval);

    if (prec < 8) {
        prec = 8;
    }

    w = header_info.width;
    h = header_info.height;
    subsampling_dx = parameters->subsampling_dx;
    subsampling_dy = parameters->subsampling_dy;

    FUNC7(&cmptparm[0], 0, (size_t)numcomps * sizeof(opj_image_cmptparm_t));

    for (i = 0; i < numcomps; i++) {
        cmptparm[i].prec = (OPJ_UINT32)prec;
        cmptparm[i].bpp = (OPJ_UINT32)prec;
        cmptparm[i].sgnd = 0;
        cmptparm[i].dx = (OPJ_UINT32)subsampling_dx;
        cmptparm[i].dy = (OPJ_UINT32)subsampling_dy;
        cmptparm[i].w = (OPJ_UINT32)w;
        cmptparm[i].h = (OPJ_UINT32)h;
    }
    image = FUNC8((OPJ_UINT32)numcomps, &cmptparm[0], color_space);

    if (!image) {
        FUNC0(fp);
        return NULL;
    }

    /* set image offset and reference grid */
    image->x0 = (OPJ_UINT32)parameters->image_offset_x0;
    image->y0 = (OPJ_UINT32)parameters->image_offset_y0;
    image->x1 = (OPJ_UINT32)(parameters->image_offset_x0 + (w - 1) * subsampling_dx
                             + 1);
    image->y1 = (OPJ_UINT32)(parameters->image_offset_y0 + (h - 1) * subsampling_dy
                             + 1);

    if ((format == 2) || (format == 3)) { /* ascii pixmap */
        unsigned int index;

        for (i = 0; i < w * h; i++) {
            for (compno = 0; compno < numcomps; compno++) {
                index = 0;
                if (FUNC4(fp, "%u", &index) != 1) {
                    FUNC2(stderr,
                            "\nWARNING: fscanf return a number of element different from the expected.\n");
                }

                image->comps[compno].data[i] = (OPJ_INT32)(index * 255) / header_info.maxval;
            }
        }
    } else if ((format == 5)
               || (format == 6)
               || ((format == 7)
                   && (header_info.gray || header_info.graya
                       || header_info.rgb || header_info.rgba))) { /* binary pixmap */
        unsigned char c0, c1, one;

        one = (prec < 9);

        for (i = 0; i < w * h; i++) {
            for (compno = 0; compno < numcomps; compno++) {
                if (!FUNC3(&c0, 1, 1, fp)) {
                    FUNC2(stderr,
                            "\nError: fread return a number of element different from the expected.\n");
                    FUNC9(image);
                    FUNC0(fp);
                    return NULL;
                }
                if (one) {
                    image->comps[compno].data[i] = c0;
                } else {
                    if (!FUNC3(&c1, 1, 1, fp)) {
                        FUNC2(stderr,
                                "\nError: fread return a number of element different from the expected.\n");
                    }
                    /* netpbm: */
                    image->comps[compno].data[i] = ((c0 << 8) | c1);
                }
            }
        }
    } else if (format == 1) { /* ascii bitmap */
        for (i = 0; i < w * h; i++) {
            unsigned int index;

            if (FUNC4(fp, "%u", &index) != 1) {
                FUNC2(stderr,
                        "\nWARNING: fscanf return a number of element different from the expected.\n");
            }

            image->comps[0].data[i] = (index ? 0 : 255);
        }
    } else if (format == 4) {
        int x, y, bit;
        unsigned char uc;

        i = 0;
        for (y = 0; y < h; ++y) {
            bit = -1;
            uc = 0;

            for (x = 0; x < w; ++x) {
                if (bit == -1) {
                    bit = 7;
                    uc = (unsigned char)FUNC5(fp);
                }
                image->comps[0].data[i] = (((uc >> bit) & 1) ? 0 : 255);
                --bit;
                ++i;
            }
        }
    } else if ((format == 7 && header_info.bw)) { /*MONO*/
        unsigned char uc;

        for (i = 0; i < w * h; ++i) {
            if (!FUNC3(&uc, 1, 1, fp)) {
                FUNC2(stderr,
                        "\nError: fread return a number of element different from the expected.\n");
            }
            image->comps[0].data[i] = (uc & 1) ? 0 : 255;
        }
    }
    FUNC0(fp);

    return image;
}