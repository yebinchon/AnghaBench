
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int opj_mj2_t ;
struct TYPE_7__ {int info_handler; int warning_handler; int error_handler; } ;
typedef TYPE_1__ opj_event_mgr_t ;
struct TYPE_8__ {scalar_t__ mj2_handle; } ;
typedef TYPE_2__ opj_dinfo_t ;
typedef int opj_common_ptr ;
typedef int mj2_dparameters_t ;
typedef int FILE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int error_callback ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int help_display () ;
 int info_callback ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_2__* mj2_create_decompress () ;
 int mj2_destroy_decompress (int *) ;
 scalar_t__ mj2_read_struct (int *,int *) ;
 int mj2_setup_decoder (scalar_t__,int *) ;
 int opj_set_event_mgr (int ,TYPE_1__*,int ) ;
 char* optarg ;
 int sscanf (char*,char*,unsigned int*) ;
 int stderr ;
 int * strchr (char*,char) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int warning_callback ;
 int xml_write_init (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int xml_write_struct (int *,int *,int *,unsigned int,char*,TYPE_1__*) ;

int main(int argc, char *argv[])
{

    opj_dinfo_t* dinfo;
    opj_event_mgr_t event_mgr;

    FILE *file, *xmlout;

    opj_mj2_t *movie;

    char* infile = 0;
    char* outfile = 0;
    char* s, S1, S2, S3;
    int len;
    unsigned int sampleframe = 1;
    char* stringDTD = ((void*)0);
    BOOL notes = TRUE;
    BOOL sampletables = FALSE;
    BOOL raw = TRUE;
    BOOL derived = TRUE;
    mj2_dparameters_t parameters;

    while (TRUE) {

        int c = getopt(argc, argv, "i:o:f:v:hntrd");

        if (c == -1) {
            break;
        }
        switch (c) {
        case 'i':
            infile = optarg;
            s = optarg;
            while (*s) {
                s++;
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
            fprintf(stderr, "Input file name must have .mj2 extension, not .%c%c%c.\n", S1,
                    S2, S3);
            return 1;


        case 'o':
            outfile = optarg;
            while (*outfile) {
                outfile++;
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

            fprintf(stderr,
                    "Output file name must have .xml extension, not .%c%c%c\n", S1, S2, S3);
            return 1;


        case 'f':
            sscanf(optarg, "%u", &sampleframe);
            break;


        case 'v':
            stringDTD = optarg;


            if (strchr(stringDTD, '"') != ((void*)0)) {
                fprintf(stderr,
                        "-D's string must not contain any embedded double-quote characters.\n");
                return 1;
            }

            if (strncmp(stringDTD, "PUBLIC ", 7) == 0 ||
                    strncmp(stringDTD, "SYSTEM ", 7) == 0) {
                break;
            }

            fprintf(stderr, "-D's string must start with \"PUBLIC \" or \"SYSTEM \"\n");
            return 1;


        case 'n':
            notes = FALSE;
            break;


        case 't':
            sampletables = TRUE;
            break;


        case 'h':
            help_display();
            return 0;


        case 'r':
            raw = FALSE;
            break;


        case 'd':
            derived = FALSE;
            break;


        default:
            return 1;
        }
    }

    if (!raw && !derived) {
        raw = TRUE;
    }



    if (!infile || !outfile) {
        fprintf(stderr,
                "Correct usage: mj2_to_metadata -i mj2-file -o xml-file (plus options)\n");
        return 1;
    }
    len = strlen(infile);
    if (infile[0] == ' ') {
        infile++;
    }

    file = fopen(infile, "rb");

    if (!file) {
        fprintf(stderr, "Failed to open %s for reading.\n", infile);
        return 1;
    }

    len = strlen(outfile);
    if (outfile[0] == ' ') {
        outfile++;
    }


    xmlout = fopen(outfile, "w");
    if (!xmlout) {
        fprintf(stderr, "Failed to open %s for writing.\n", outfile);
        return 1;
    }






    memset(&event_mgr, 0, sizeof(opj_event_mgr_t));
    event_mgr.error_handler = error_callback;
    event_mgr.warning_handler = warning_callback;
    event_mgr.info_handler = info_callback;


    dinfo = mj2_create_decompress();


    opj_set_event_mgr((opj_common_ptr)dinfo, &event_mgr, stderr);


    movie = (opj_mj2_t*) dinfo->mj2_handle;
    mj2_setup_decoder(dinfo->mj2_handle, &parameters);

    if (mj2_read_struct(file, movie)) {
        fclose(xmlout);
        return 1;
    }

    xml_write_init(notes, sampletables, raw, derived);
    xml_write_struct(file, xmlout, movie, sampleframe, stringDTD, &event_mgr);
    fclose(xmlout);

    fprintf(stderr, "Metadata correctly extracted to XML file \n");;


    if (dinfo) {
        mj2_destroy_decompress((opj_mj2_t*)dinfo->mj2_handle);
    }

    return 0;
}
