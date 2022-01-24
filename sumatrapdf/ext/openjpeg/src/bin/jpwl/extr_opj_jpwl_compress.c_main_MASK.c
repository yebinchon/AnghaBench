#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_48__   TYPE_6__ ;
typedef  struct TYPE_47__   TYPE_4__ ;
typedef  struct TYPE_46__   TYPE_3__ ;
typedef  struct TYPE_45__   TYPE_2__ ;
typedef  struct TYPE_44__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  raw_cparameters_t ;
struct TYPE_44__ {int numcomps; } ;
typedef  TYPE_1__ opj_image_t ;
struct TYPE_45__ {float* rates; int set_imgdir; int /*<<< orphan*/  imgdirpath; int /*<<< orphan*/  info_handler; int /*<<< orphan*/  warning_handler; int /*<<< orphan*/  error_handler; } ;
typedef  TYPE_2__ opj_event_mgr_t ;
struct TYPE_46__ {int tcp_numlayers; float* tcp_rates; char* cp_comment; int decod_format; int tcp_mct; scalar_t__ cod_format; char* outfile; char* cp_matrice; scalar_t__ cp_cinema; int /*<<< orphan*/  infile; } ;
typedef  TYPE_3__ opj_cparameters_t ;
typedef  int /*<<< orphan*/  opj_common_ptr ;
typedef  int /*<<< orphan*/  opj_codestream_info_t ;
struct TYPE_47__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_4__ opj_cio_t ;
typedef  int /*<<< orphan*/  opj_cinfo_t ;
typedef  int /*<<< orphan*/  opj_bool ;
typedef  TYPE_2__ img_fol_t ;
struct TYPE_48__ {char* filename_buf; char** filename; } ;
typedef  TYPE_6__ dircnt_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  BMP_DFMT 134 
 int /*<<< orphan*/  CODEC_J2K ; 
 int /*<<< orphan*/  CODEC_JP2 ; 
 scalar_t__ J2K_CFMT ; 
 int OPJ_PATH_LEN ; 
#define  PGX_DFMT 133 
#define  PNG_DFMT 132 
#define  PXM_DFMT 131 
#define  RAW_DFMT 130 
#define  TGA_DFMT 129 
#define  TIF_DFMT 128 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,TYPE_6__*,TYPE_2__*,TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  info_callback ; 
 int FUNC11 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (size_t const) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*) ; 
 char* FUNC25 () ; 
 int FUNC26 (int,char**,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC27 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC28 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC29 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC30 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 size_t const FUNC32 (char const*) ; 
 TYPE_1__* FUNC33 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC34 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  warning_callback ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,char*) ; 

int FUNC36(int argc, char **argv)
{
    opj_bool bSuccess;
    opj_cparameters_t parameters;   /* compression parameters */
    img_fol_t img_fol;
    opj_event_mgr_t event_mgr;      /* event manager */
    opj_image_t *image = NULL;
    int i, num_images;
    int imageno;
    dircnt_t *dirptr = NULL;
    raw_cparameters_t raw_cp;
    opj_codestream_info_t cstr_info;        /* Codestream information structure */
    char indexfilename[OPJ_PATH_LEN];   /* index file name */

    /*
    configure the event callbacks (not required)
    setting of each callback is optional
    */
    FUNC13(&event_mgr, 0, sizeof(opj_event_mgr_t));
    event_mgr.error_handler = error_callback;
    event_mgr.warning_handler = warning_callback;
    event_mgr.info_handler = info_callback;

    /* set encoding parameters to default values */
    FUNC22(&parameters);

    /* Initialize indexfilename and img_fol */
    *indexfilename = 0;
    FUNC13(&img_fol, 0, sizeof(img_fol_t));

    /* parse input and get user encoding parameters */
    if (FUNC26(argc, argv, &parameters, &img_fol, &raw_cp,
                              indexfilename) == 1) {
        return 1;
    }

    if (parameters.cp_cinema) {
        img_fol.rates = (float*)FUNC12(parameters.tcp_numlayers * sizeof(float));
        for (i = 0; i < parameters.tcp_numlayers; i++) {
            img_fol.rates[i] = parameters.tcp_rates[i];
        }
        FUNC1(&parameters);
    }

    /* Create comment for codestream */
    if (parameters.cp_comment == NULL) {
        const char comment[] = "Created by OpenJPEG version ";
        const size_t clen = FUNC32(comment);
        const char *version = FUNC25();
        /* UniPG>> */
#ifdef USE_JPWL
        parameters.cp_comment = (char*)malloc(clen + strlen(version) + 11);
        sprintf(parameters.cp_comment, "%s%s with JPWL", comment, version);
#else
        parameters.cp_comment = (char*)FUNC12(clen + FUNC32(version) + 1);
        FUNC31(parameters.cp_comment, "%s%s", comment, version);
#endif
        /* <<UniPG */
    }

    /* Read directory if necessary */
    if (img_fol.set_imgdir == 1) {
        num_images = FUNC10(img_fol.imgdirpath);
        dirptr = (dircnt_t*)FUNC12(sizeof(dircnt_t));
        if (dirptr) {
            dirptr->filename_buf = (char*)FUNC12(num_images * OPJ_PATH_LEN * sizeof(
                    char)); /* Stores at max 10 image file names*/
            dirptr->filename = (char**) FUNC12(num_images * sizeof(char*));
            if (!dirptr->filename_buf) {
                return 0;
            }
            for (i = 0; i < num_images; i++) {
                dirptr->filename[i] = dirptr->filename_buf + i * OPJ_PATH_LEN;
            }
        }
        if (FUNC11(dirptr, img_fol.imgdirpath) == 1) {
            return 0;
        }
        if (num_images == 0) {
            FUNC6(stdout, "Folder is empty\n");
            return 0;
        }
    } else {
        num_images = 1;
    }
    /*Encoding image one by one*/
    for (imageno = 0; imageno < num_images; imageno++) {
        image = NULL;
        FUNC6(stderr, "\n");

        if (img_fol.set_imgdir == 1) {
            if (FUNC9(imageno, dirptr, &img_fol, &parameters)) {
                FUNC6(stderr, "skipping file...\n");
                continue;
            }
        }
        switch (parameters.decod_format) {
        case PGX_DFMT:
            break;
        case PXM_DFMT:
            break;
        case BMP_DFMT:
            break;
        case TIF_DFMT:
            break;
        case RAW_DFMT:
            break;
        case TGA_DFMT:
            break;
        case PNG_DFMT:
            break;
        default:
            FUNC6(stderr, "skipping file...\n");
            continue;
        }

        /* decode the source image */
        /* ----------------------- */

        switch (parameters.decod_format) {
        case PGX_DFMT:
            image = FUNC27(parameters.infile, &parameters);
            if (!image) {
                FUNC6(stderr, "Unable to load pgx file\n");
                return 1;
            }
            break;

        case PXM_DFMT:
            image = FUNC29(parameters.infile, &parameters);
            if (!image) {
                FUNC6(stderr, "Unable to load pnm file\n");
                return 1;
            }
            break;

        case BMP_DFMT:
            image = FUNC0(parameters.infile, &parameters);
            if (!image) {
                FUNC6(stderr, "Unable to load bmp file\n");
                return 1;
            }
            break;
#ifdef OPJ_HAVE_LIBTIFF
        case TIF_DFMT:
            image = tiftoimage(parameters.infile, &parameters);
            if (!image) {
                fprintf(stderr, "Unable to load tiff file\n");
                return 1;
            }
            break;
#endif /* OPJ_HAVE_LIBTIFF */
        case RAW_DFMT:
            image = FUNC30(parameters.infile, &parameters, &raw_cp);
            if (!image) {
                FUNC6(stderr, "Unable to load raw file\n");
                return 1;
            }
            break;

        case TGA_DFMT:
            image = FUNC33(parameters.infile, &parameters);
            if (!image) {
                FUNC6(stderr, "Unable to load tga file\n");
                return 1;
            }
            break;
#ifdef OPJ_HAVE_LIBPNG
        case PNG_DFMT:
            image = pngtoimage(parameters.infile, &parameters);
            if (!image) {
                fprintf(stderr, "Unable to load png file\n");
                return 1;
            }
            break;
#endif /* OPJ_HAVE_LIBPNG */
        }
        /* Can happen if input file is TIFF or PNG
         * and OPJ_HAVE_LIBTIF or OPJ_HAVE_LIBPNG is undefined
        */
        if (!image) {
            FUNC6(stderr, "Unable to load file: got no image\n");
            return 1;
        }
        /* Decide if MCT should be used */
        parameters.tcp_mct = image->numcomps == 3 ? 1 : 0;

        if (parameters.cp_cinema) {
            FUNC2(&parameters, image, &img_fol);
        }

        /* encode the destination image */
        /* ---------------------------- */

        if (parameters.cod_format == J2K_CFMT) {    /* J2K format output */
            int codestream_length;
            size_t res;
            opj_cio_t *cio = NULL;
            FILE *f = NULL;

            /* get a J2K compressor handle */
            opj_cinfo_t* cinfo = FUNC16(CODEC_J2K);

            /* catch events using our callbacks and give a local context */
            FUNC23((opj_common_ptr)cinfo, &event_mgr, stderr);

            /* setup the encoder parameters using the current image and user parameters */
            FUNC24(cinfo, &parameters, image);

            /* open a byte stream for writing */
            /* allocate memory for all tiles */
            cio = FUNC15((opj_common_ptr)cinfo, NULL, 0);

            /* encode the image */
            if (*indexfilename) {               /* If need to extract codestream information*/
                bSuccess = FUNC20(cinfo, cio, image, &cstr_info);
            } else {
                bSuccess = FUNC19(cinfo, cio, image, NULL);
            }
            if (!bSuccess) {
                FUNC14(cio);
                FUNC6(stderr, "failed to encode image\n");
                return 1;
            }
            codestream_length = FUNC3(cio);

            /* write the buffer to disk */
            f = FUNC5(parameters.outfile, "wb");
            if (!f) {
                FUNC6(stderr, "failed to open %s for writing\n", parameters.outfile);
                return 1;
            }
            res = FUNC8(cio->buffer, 1, codestream_length, f);
            if (res < (size_t)codestream_length) {  /* FIXME */
                FUNC6(stderr, "failed to write %d (%s)\n", codestream_length,
                        parameters.outfile);
                return 1;
            }
            FUNC4(f);

            FUNC6(stderr, "Generated outfile %s\n", parameters.outfile);
            /* close and free the byte stream */
            FUNC14(cio);

            /* Write the index to disk */
            if (*indexfilename) {
                bSuccess = FUNC35(&cstr_info, indexfilename);
                if (bSuccess) {
                    FUNC6(stderr, "Failed to output index file into [%s]\n", indexfilename);
                }
            }

            /* free remaining compression structures */
            FUNC17(cinfo);
            if (*indexfilename) {
                FUNC18(&cstr_info);
            }
        } else {            /* JP2 format output */
            int codestream_length;
            size_t res;
            opj_cio_t *cio = NULL;
            FILE *f = NULL;
            opj_cinfo_t *cinfo = NULL;

            /* get a JP2 compressor handle */
            cinfo = FUNC16(CODEC_JP2);

            /* catch events using our callbacks and give a local context */
            FUNC23((opj_common_ptr)cinfo, &event_mgr, stderr);

            /* setup the encoder parameters using the current image and using user parameters */
            FUNC24(cinfo, &parameters, image);

            /* open a byte stream for writing */
            /* allocate memory for all tiles */
            cio = FUNC15((opj_common_ptr)cinfo, NULL, 0);

            /* encode the image */
            if (*indexfilename /*|| parameters.jpip_on*/) { /* If need to extract codestream information*/
                bSuccess = FUNC20(cinfo, cio, image, &cstr_info);
            } else {
                bSuccess = FUNC19(cinfo, cio, image, NULL);
            }
            if (!bSuccess) {
                FUNC14(cio);
                FUNC6(stderr, "failed to encode image\n");
                return 1;
            }
            codestream_length = FUNC3(cio);

            /* write the buffer to disk */
            f = FUNC5(parameters.outfile, "wb");
            if (!f) {
                FUNC6(stderr, "failed to open %s for writing\n", parameters.outfile);
                return 1;
            }
            res = FUNC8(cio->buffer, 1, codestream_length, f);
            if (res < (size_t)codestream_length) {  /* FIXME */
                FUNC6(stderr, "failed to write %d (%s)\n", codestream_length,
                        parameters.outfile);
                return 1;
            }
            FUNC4(f);
            FUNC6(stderr, "Generated outfile %s\n", parameters.outfile);
            /* close and free the byte stream */
            FUNC14(cio);

            /* Write the index to disk */
            if (*indexfilename) {
                bSuccess = FUNC35(&cstr_info, indexfilename);
                if (bSuccess) {
                    FUNC6(stderr, "Failed to output index file\n");
                }
            }

            /* free remaining compression structures */
            FUNC17(cinfo);
            if (*indexfilename) {
                FUNC18(&cstr_info);
            }
        }

        /* free image data */
        FUNC21(image);
    }

    /* free user parameters structure */
    if (parameters.cp_comment) {
        FUNC7(parameters.cp_comment);
    }
    if (parameters.cp_matrice) {
        FUNC7(parameters.cp_matrice);
    }

    return 0;
}