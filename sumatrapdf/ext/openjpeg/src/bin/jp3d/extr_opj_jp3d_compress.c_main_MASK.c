#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int x1; int x0; int y1; int y0; int z1; int z0; TYPE_1__* comps; } ;
typedef  TYPE_2__ opj_volume_t ;
struct TYPE_26__ {int /*<<< orphan*/  info_handler; int /*<<< orphan*/  warning_handler; int /*<<< orphan*/  error_handler; } ;
typedef  TYPE_3__ opj_event_mgr_t ;
struct TYPE_27__ {char* cp_comment; scalar_t__ cod_format; int decod_format; char* outfile; char* cp_matrice; int /*<<< orphan*/  index; int /*<<< orphan*/  infile; int /*<<< orphan*/  imgfile; } ;
typedef  TYPE_4__ opj_cparameters_t ;
typedef  int /*<<< orphan*/  opj_common_ptr ;
struct TYPE_28__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_5__ opj_cio_t ;
typedef  int /*<<< orphan*/  opj_cinfo_t ;
struct TYPE_24__ {int prec; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  BIN_DFMT 130 
 int /*<<< orphan*/  CODEC_J2K ; 
 int /*<<< orphan*/  CODEC_J3D ; 
#define  IMG_DFMT 129 
 scalar_t__ J2K_CFMT ; 
 scalar_t__ J3D_CFMT ; 
#define  PGX_DFMT 128 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  info_callback ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (int,char**,TYPE_4__*) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  warning_callback ; 

int FUNC20(int argc, char **argv)
{
    bool bSuccess;
    bool delete_comment = true;
    opj_cparameters_t parameters;   /* compression parameters */
    opj_event_mgr_t event_mgr;      /* event manager */
    opj_volume_t *volume = NULL;

    /*
    configure the event callbacks (not required)
    setting of each callback is optional
    */
    FUNC8(&event_mgr, 0, sizeof(opj_event_mgr_t));
    event_mgr.error_handler = error_callback;
    event_mgr.warning_handler = warning_callback;
    event_mgr.info_handler = info_callback;

    /* set encoding parameters to default values */
    FUNC14(&parameters);

    /* parse input and get user encoding parameters */
    if (FUNC18(argc, argv, &parameters) == 1) {
        return 0;
    }

    if (parameters.cp_comment == NULL) {
        parameters.cp_comment = "Created by OpenJPEG version JP3D";
        /* no need to delete parameters.cp_comment on exit */
        delete_comment = false;
    }

    /* encode the destination volume */
    /* ---------------------------- */
    if (parameters.cod_format == J3D_CFMT || parameters.cod_format == J2K_CFMT) {
        int codestream_length, pixels, bitsin;
        opj_cio_t *cio = NULL;
        FILE *f = NULL;
        opj_cinfo_t* cinfo = NULL;

        /* decode the source volume */
        /* ----------------------- */
        switch (parameters.decod_format) {
        case PGX_DFMT:
            FUNC4(stdout, "[INFO] Loading pgx file(s)\n");
            volume = FUNC19(parameters.infile, &parameters);
            if (!volume) {
                FUNC4(stdout, "[ERROR] Unable to load pgx files\n");
                return 1;
            }
            break;

        case BIN_DFMT:
            FUNC4(stdout, "[INFO] Loading bin file\n");
            volume = FUNC0(parameters.infile, parameters.imgfile, &parameters);
            if (!volume) {
                FUNC4(stdout, "[ERROR] Unable to load bin file\n");
                return 1;
            }
            break;

        case IMG_DFMT:
            FUNC4(stdout, "[INFO] Loading img file\n");
            volume = FUNC7(parameters.infile, &parameters);
            if (!volume) {
                FUNC4(stderr, "[ERROR] Unable to load img file\n");
                return 1;
            }
            break;
        }

        /* get a JP3D or J2K compressor handle */
        if (parameters.cod_format == J3D_CFMT) {
            cinfo = FUNC11(CODEC_J3D);
        } else if (parameters.cod_format == J2K_CFMT) {
            cinfo = FUNC11(CODEC_J2K);
        }

        /* catch events using our callbacks and give a local context */
        FUNC15((opj_common_ptr)cinfo, &event_mgr, stdout);

        /* setup the encoder parameters using the current volume and using user parameters */
        FUNC16(cinfo, &parameters, volume);

        /* open a byte stream for writing */
        /* allocate memory for all tiles */
        cio = FUNC10((opj_common_ptr)cinfo, NULL, 0);

        /* encode the volume */
        /*fprintf(stdout, "[INFO] Encode the volume\n");*/
        bSuccess = FUNC13(cinfo, cio, volume, parameters.index);
        if (!bSuccess) {
            FUNC9(cio);
            FUNC4(stdout, "[ERROR] Failed to encode volume\n");
            return 1;
        }
        codestream_length = FUNC1(cio);
        pixels = (volume->x1 - volume->x0) * (volume->y1 - volume->y0) *
                 (volume->z1 - volume->z0);
        bitsin = pixels * volume->comps[0].prec;
        FUNC4(stdout,
                "[RESULT] Volume: %d x %d x %d (x %d bpv)\n Codestream: %d B,  Ratio: %5.3f bpv,  (%5.3f : 1) \n",
                (volume->x1 - volume->x0), (volume->y1 - volume->y0), (volume->z1 - volume->z0),
                volume->comps[0].prec,
                codestream_length, ((double)codestream_length * 8.0 / (double)pixels),
                ((double)bitsin / (8.0 * (double)codestream_length)));

        /* write the buffer to disk */
        f = FUNC3(parameters.outfile, "wb");
        if (!f) {
            FUNC4(stdout, "[ERROR] Failed to open %s for writing\n", parameters.outfile);
            return 1;
        }
        FUNC6(cio->buffer, 1, codestream_length, f);
        FUNC2(f);

        /* close and free the byte stream */
        FUNC9(cio);

        /* free remaining compression structures */
        FUNC12(cinfo);
    } else {
        FUNC4(stdout, "[ERROR] Cod_format != JP3d !!! \n");
        return 1;
    }

    /* free user parameters structure */
    if (delete_comment) {
        if (parameters.cp_comment) {
            FUNC5(parameters.cp_comment);
        }
    }
    if (parameters.cp_matrice) {
        FUNC5(parameters.cp_matrice);
    }

    /* free volume data */
    FUNC17(volume);

    return 0;
}