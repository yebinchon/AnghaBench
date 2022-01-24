#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opj_mj2_t ;
struct TYPE_7__ {int /*<<< orphan*/  info_handler; int /*<<< orphan*/  warning_handler; int /*<<< orphan*/  error_handler; } ;
typedef  TYPE_1__ opj_event_mgr_t ;
struct TYPE_8__ {scalar_t__ mj2_handle; } ;
typedef  TYPE_2__ opj_dinfo_t ;
typedef  int /*<<< orphan*/  opj_common_ptr ;
typedef  int /*<<< orphan*/  mj2_dparameters_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  info_callback ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC12 (char*,char) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  warning_callback ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,char*,TYPE_1__*) ; 

int FUNC17(int argc, char *argv[])
{

    opj_dinfo_t* dinfo;
    opj_event_mgr_t event_mgr;      /* event manager */

    FILE *file, *xmlout;
    /*  char xmloutname[50]; */
    opj_mj2_t *movie;

    char* infile = 0;
    char* outfile = 0;
    char* s, S1, S2, S3;
    int len;
    unsigned int sampleframe = 1; /* First frame */
    char* stringDTD = NULL;
    BOOL notes = TRUE;
    BOOL sampletables = FALSE;
    BOOL raw = TRUE;
    BOOL derived = TRUE;
    mj2_dparameters_t parameters;

    while (TRUE) {
        /* ':' after letter means it takes an argument */
        int c = FUNC3(argc, argv, "i:o:f:v:hntrd");
        /* FUTURE:  Reserve 'p' for pruning file (which will probably make -t redundant) */
        if (c == -1) {
            break;
        }
        switch (c) {
        case 'i':           /* IN file */
            infile = optarg;
            s = optarg;
            while (*s) {
                s++;    /* Run to filename end */
            }
            s--;
            S3 = *s;
            s--;
            S2 = *s;
            s--;
            S1 = *s;

            if ((S1 == 'm' && S2 == 'j' && S3 == '2')
                    || (S1 == 'M' && S2 == 'J' && S3 == '2')) {
                break;
            }
            FUNC2(stderr, "Input file name must have .mj2 extension, not .%c%c%c.\n", S1,
                    S2, S3);
            return 1;

        /* ----------------------------------------------------- */
        case 'o':           /* OUT file */
            outfile = optarg;
            while (*outfile) {
                outfile++;    /* Run to filename end */
            }
            outfile--;
            S3 = *outfile;
            outfile--;
            S2 = *outfile;
            outfile--;
            S1 = *outfile;

            outfile = optarg;

            if ((S1 == 'x' && S2 == 'm' && S3 == 'l')
                    || (S1 == 'X' && S2 == 'M' && S3 == 'L')) {
                break;
            }

            FUNC2(stderr,
                    "Output file name must have .xml extension, not .%c%c%c\n", S1, S2, S3);
            return 1;

        /* ----------------------------------------------------- */
        case 'f':           /* Choose sample frame.  0 = none */
            FUNC11(optarg, "%u", &sampleframe);
            break;

        /* ----------------------------------------------------- */
        case 'v':           /* Verification by DTD. */
            stringDTD = optarg;
            /* We will not insist upon last 3 chars being "dtd", since non-file
            access protocol may be used. */
            if (FUNC12(stringDTD, '"') != NULL) {
                FUNC2(stderr,
                        "-D's string must not contain any embedded double-quote characters.\n");
                return 1;
            }

            if (FUNC14(stringDTD, "PUBLIC ", 7) == 0 ||
                    FUNC14(stringDTD, "SYSTEM ", 7) == 0) {
                break;
            }

            FUNC2(stderr, "-D's string must start with \"PUBLIC \" or \"SYSTEM \"\n");
            return 1;

        /* ----------------------------------------------------- */
        case 'n':           /* Suppress comments */
            notes = FALSE;
            break;

        /* ----------------------------------------------------- */
        case 't':           /* Show sample size and chunk offset tables */
            sampletables = TRUE;
            break;

        /* ----------------------------------------------------- */
        case 'h':           /* Display an help description */
            FUNC4();
            return 0;

        /* ----------------------------------------------------- */
        case 'r':           /* Suppress raw data */
            raw = FALSE;
            break;

        /* ----------------------------------------------------- */
        case 'd':           /* Suppress derived data */
            derived = FALSE;
            break;

        /* ----------------------------------------------------- */
        default:
            return 1;
        } /* switch */
    } /* while */

    if (!raw && !derived) {
        raw = TRUE;    /* At least one of 'raw' and 'derived' must be true */
    }

    /* Error messages */
    /* -------------- */
    if (!infile || !outfile) {
        FUNC2(stderr,
                "Correct usage: mj2_to_metadata -i mj2-file -o xml-file (plus options)\n");
        return 1;
    }

    /* was:
      if (argc != 3) {
        printf("Bad syntax: Usage: MJ2_to_metadata inputfile.mj2 outputfile.xml\n");
        printf("Example: MJ2_to_metadata foreman.mj2 foreman.xml\n");
        return 1;
      }
    */
    len = FUNC13(infile);
    if (infile[0] == ' ') {
        infile++; /* There may be a leading blank if user put space after -i */
    }

    file = FUNC1(infile, "rb"); /* was: argv[1] */

    if (!file) {
        FUNC2(stderr, "Failed to open %s for reading.\n", infile); /* was: argv[1] */
        return 1;
    }

    len = FUNC13(outfile);
    if (outfile[0] == ' ') {
        outfile++; /* There may be a leading blank if user put space after -o */
    }

    // Checking output file
    xmlout = FUNC1(outfile, "w"); /* was: argv[2] */
    if (!xmlout) {
        FUNC2(stderr, "Failed to open %s for writing.\n", outfile); /* was: argv[2] */
        return 1;
    }
    // Leave it open

    /*
    configure the event callbacks (not required)
    setting of each callback is optional
    */
    FUNC5(&event_mgr, 0, sizeof(opj_event_mgr_t));
    event_mgr.error_handler = error_callback;
    event_mgr.warning_handler = warning_callback;
    event_mgr.info_handler = info_callback;

    /* get a MJ2 decompressor handle */
    dinfo = FUNC6();

    /* catch events using our callbacks and give a local context */
    FUNC10((opj_common_ptr)dinfo, &event_mgr, stderr);

    /* setup the decoder decoding parameters using user parameters */
    movie = (opj_mj2_t*) dinfo->mj2_handle;
    FUNC9(dinfo->mj2_handle, &parameters);

    if (FUNC8(file, movie)) { // Creating the movie structure
        FUNC0(xmlout);
        return 1;
    }

    FUNC15(notes, sampletables, raw, derived);
    FUNC16(file, xmlout, movie, sampleframe, stringDTD, &event_mgr);
    FUNC0(xmlout);

    FUNC2(stderr, "Metadata correctly extracted to XML file \n");;

    /* free remaining structures */
    if (dinfo) {
        FUNC7((opj_mj2_t*)dinfo->mj2_handle);
    }

    return 0;
}