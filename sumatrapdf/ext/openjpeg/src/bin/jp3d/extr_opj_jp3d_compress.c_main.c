
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_25__ {int x1; int x0; int y1; int y0; int z1; int z0; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_volume_t ;
struct TYPE_26__ {int info_handler; int warning_handler; int error_handler; } ;
typedef TYPE_3__ opj_event_mgr_t ;
struct TYPE_27__ {char* cp_comment; scalar_t__ cod_format; int decod_format; char* outfile; char* cp_matrice; int index; int infile; int imgfile; } ;
typedef TYPE_4__ opj_cparameters_t ;
typedef int opj_common_ptr ;
struct TYPE_28__ {int buffer; } ;
typedef TYPE_5__ opj_cio_t ;
typedef int opj_cinfo_t ;
struct TYPE_24__ {int prec; } ;
typedef int FILE ;



 int CODEC_J2K ;
 int CODEC_J3D ;

 scalar_t__ J2K_CFMT ;
 scalar_t__ J3D_CFMT ;

 TYPE_2__* bintovolume (int ,int ,TYPE_4__*) ;
 int cio_tell (TYPE_5__*) ;
 int error_callback ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int fwrite (int ,int,int,int *) ;
 TYPE_2__* imgtovolume (int ,TYPE_4__*) ;
 int info_callback ;
 int memset (TYPE_3__*,int ,int) ;
 int opj_cio_close (TYPE_5__*) ;
 TYPE_5__* opj_cio_open (int ,int *,int ) ;
 int * opj_create_compress (int ) ;
 int opj_destroy_compress (int *) ;
 int opj_encode (int *,TYPE_5__*,TYPE_2__*,int ) ;
 int opj_set_default_encoder_parameters (TYPE_4__*) ;
 int opj_set_event_mgr (int ,TYPE_3__*,int ) ;
 int opj_setup_encoder (int *,TYPE_4__*,TYPE_2__*) ;
 int opj_volume_destroy (TYPE_2__*) ;
 int parse_cmdline_encoder (int,char**,TYPE_4__*) ;
 TYPE_2__* pgxtovolume (int ,TYPE_4__*) ;
 int stderr ;
 int stdout ;
 int warning_callback ;

int main(int argc, char **argv)
{
    bool bSuccess;
    bool delete_comment = 1;
    opj_cparameters_t parameters;
    opj_event_mgr_t event_mgr;
    opj_volume_t *volume = ((void*)0);





    memset(&event_mgr, 0, sizeof(opj_event_mgr_t));
    event_mgr.error_handler = error_callback;
    event_mgr.warning_handler = warning_callback;
    event_mgr.info_handler = info_callback;


    opj_set_default_encoder_parameters(&parameters);


    if (parse_cmdline_encoder(argc, argv, &parameters) == 1) {
        return 0;
    }

    if (parameters.cp_comment == ((void*)0)) {
        parameters.cp_comment = "Created by OpenJPEG version JP3D";

        delete_comment = 0;
    }



    if (parameters.cod_format == J3D_CFMT || parameters.cod_format == J2K_CFMT) {
        int codestream_length, pixels, bitsin;
        opj_cio_t *cio = ((void*)0);
        FILE *f = ((void*)0);
        opj_cinfo_t* cinfo = ((void*)0);



        switch (parameters.decod_format) {
        case 128:
            fprintf(stdout, "[INFO] Loading pgx file(s)\n");
            volume = pgxtovolume(parameters.infile, &parameters);
            if (!volume) {
                fprintf(stdout, "[ERROR] Unable to load pgx files\n");
                return 1;
            }
            break;

        case 130:
            fprintf(stdout, "[INFO] Loading bin file\n");
            volume = bintovolume(parameters.infile, parameters.imgfile, &parameters);
            if (!volume) {
                fprintf(stdout, "[ERROR] Unable to load bin file\n");
                return 1;
            }
            break;

        case 129:
            fprintf(stdout, "[INFO] Loading img file\n");
            volume = imgtovolume(parameters.infile, &parameters);
            if (!volume) {
                fprintf(stderr, "[ERROR] Unable to load img file\n");
                return 1;
            }
            break;
        }


        if (parameters.cod_format == J3D_CFMT) {
            cinfo = opj_create_compress(CODEC_J3D);
        } else if (parameters.cod_format == J2K_CFMT) {
            cinfo = opj_create_compress(CODEC_J2K);
        }


        opj_set_event_mgr((opj_common_ptr)cinfo, &event_mgr, stdout);


        opj_setup_encoder(cinfo, &parameters, volume);



        cio = opj_cio_open((opj_common_ptr)cinfo, ((void*)0), 0);



        bSuccess = opj_encode(cinfo, cio, volume, parameters.index);
        if (!bSuccess) {
            opj_cio_close(cio);
            fprintf(stdout, "[ERROR] Failed to encode volume\n");
            return 1;
        }
        codestream_length = cio_tell(cio);
        pixels = (volume->x1 - volume->x0) * (volume->y1 - volume->y0) *
                 (volume->z1 - volume->z0);
        bitsin = pixels * volume->comps[0].prec;
        fprintf(stdout,
                "[RESULT] Volume: %d x %d x %d (x %d bpv)\n Codestream: %d B,  Ratio: %5.3f bpv,  (%5.3f : 1) \n",
                (volume->x1 - volume->x0), (volume->y1 - volume->y0), (volume->z1 - volume->z0),
                volume->comps[0].prec,
                codestream_length, ((double)codestream_length * 8.0 / (double)pixels),
                ((double)bitsin / (8.0 * (double)codestream_length)));


        f = fopen(parameters.outfile, "wb");
        if (!f) {
            fprintf(stdout, "[ERROR] Failed to open %s for writing\n", parameters.outfile);
            return 1;
        }
        fwrite(cio->buffer, 1, codestream_length, f);
        fclose(f);


        opj_cio_close(cio);


        opj_destroy_compress(cinfo);
    } else {
        fprintf(stdout, "[ERROR] Cod_format != JP3d !!! \n");
        return 1;
    }


    if (delete_comment) {
        if (parameters.cp_comment) {
            free(parameters.cp_comment);
        }
    }
    if (parameters.cp_matrice) {
        free(parameters.cp_matrice);
    }


    opj_volume_destroy(volume);

    return 0;
}
