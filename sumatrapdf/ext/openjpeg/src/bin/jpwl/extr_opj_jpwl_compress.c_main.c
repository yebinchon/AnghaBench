
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_6__ ;
typedef struct TYPE_47__ TYPE_4__ ;
typedef struct TYPE_46__ TYPE_3__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_1__ ;


typedef int raw_cparameters_t ;
struct TYPE_44__ {int numcomps; } ;
typedef TYPE_1__ opj_image_t ;
struct TYPE_45__ {float* rates; int set_imgdir; int imgdirpath; int info_handler; int warning_handler; int error_handler; } ;
typedef TYPE_2__ opj_event_mgr_t ;
struct TYPE_46__ {int tcp_numlayers; float* tcp_rates; char* cp_comment; int decod_format; int tcp_mct; scalar_t__ cod_format; char* outfile; char* cp_matrice; scalar_t__ cp_cinema; int infile; } ;
typedef TYPE_3__ opj_cparameters_t ;
typedef int opj_common_ptr ;
typedef int opj_codestream_info_t ;
struct TYPE_47__ {int buffer; } ;
typedef TYPE_4__ opj_cio_t ;
typedef int opj_cinfo_t ;
typedef int opj_bool ;
typedef TYPE_2__ img_fol_t ;
struct TYPE_48__ {char* filename_buf; char** filename; } ;
typedef TYPE_6__ dircnt_t ;
typedef int FILE ;



 int CODEC_J2K ;
 int CODEC_JP2 ;
 scalar_t__ J2K_CFMT ;
 int OPJ_PATH_LEN ;






 TYPE_1__* bmptoimage (int ,TYPE_3__*) ;
 int cinema_parameters (TYPE_3__*) ;
 int cinema_setup_encoder (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int cio_tell (TYPE_4__*) ;
 int error_callback ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 size_t fwrite (int ,int,int,int *) ;
 scalar_t__ get_next_file (int,TYPE_6__*,TYPE_2__*,TYPE_3__*) ;
 int get_num_images (int ) ;
 int info_callback ;
 int load_images (TYPE_6__*,int ) ;
 scalar_t__ malloc (size_t const) ;
 int memset (TYPE_2__*,int ,int) ;
 int opj_cio_close (TYPE_4__*) ;
 TYPE_4__* opj_cio_open (int ,int *,int ) ;
 int * opj_create_compress (int ) ;
 int opj_destroy_compress (int *) ;
 int opj_destroy_cstr_info (int *) ;
 int opj_encode (int *,TYPE_4__*,TYPE_1__*,int *) ;
 int opj_encode_with_info (int *,TYPE_4__*,TYPE_1__*,int *) ;
 int opj_image_destroy (TYPE_1__*) ;
 int opj_set_default_encoder_parameters (TYPE_3__*) ;
 int opj_set_event_mgr (int ,TYPE_2__*,int ) ;
 int opj_setup_encoder (int *,TYPE_3__*,TYPE_1__*) ;
 char* opj_version () ;
 int parse_cmdline_encoder (int,char**,TYPE_3__*,TYPE_2__*,int *,char*) ;
 TYPE_1__* pgxtoimage (int ,TYPE_3__*) ;
 TYPE_1__* pngtoimage (int ,TYPE_3__*) ;
 TYPE_1__* pnmtoimage (int ,TYPE_3__*) ;
 TYPE_1__* rawtoimage (int ,TYPE_3__*,int *) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int stderr ;
 int stdout ;
 size_t const strlen (char const*) ;
 TYPE_1__* tgatoimage (int ,TYPE_3__*) ;
 TYPE_1__* tiftoimage (int ,TYPE_3__*) ;
 int warning_callback ;
 int write_index_file (int *,char*) ;

int main(int argc, char **argv)
{
    opj_bool bSuccess;
    opj_cparameters_t parameters;
    img_fol_t img_fol;
    opj_event_mgr_t event_mgr;
    opj_image_t *image = ((void*)0);
    int i, num_images;
    int imageno;
    dircnt_t *dirptr = ((void*)0);
    raw_cparameters_t raw_cp;
    opj_codestream_info_t cstr_info;
    char indexfilename[OPJ_PATH_LEN];





    memset(&event_mgr, 0, sizeof(opj_event_mgr_t));
    event_mgr.error_handler = error_callback;
    event_mgr.warning_handler = warning_callback;
    event_mgr.info_handler = info_callback;


    opj_set_default_encoder_parameters(&parameters);


    *indexfilename = 0;
    memset(&img_fol, 0, sizeof(img_fol_t));


    if (parse_cmdline_encoder(argc, argv, &parameters, &img_fol, &raw_cp,
                              indexfilename) == 1) {
        return 1;
    }

    if (parameters.cp_cinema) {
        img_fol.rates = (float*)malloc(parameters.tcp_numlayers * sizeof(float));
        for (i = 0; i < parameters.tcp_numlayers; i++) {
            img_fol.rates[i] = parameters.tcp_rates[i];
        }
        cinema_parameters(&parameters);
    }


    if (parameters.cp_comment == ((void*)0)) {
        const char comment[] = "Created by OpenJPEG version ";
        const size_t clen = strlen(comment);
        const char *version = opj_version();





        parameters.cp_comment = (char*)malloc(clen + strlen(version) + 1);
        sprintf(parameters.cp_comment, "%s%s", comment, version);


    }


    if (img_fol.set_imgdir == 1) {
        num_images = get_num_images(img_fol.imgdirpath);
        dirptr = (dircnt_t*)malloc(sizeof(dircnt_t));
        if (dirptr) {
            dirptr->filename_buf = (char*)malloc(num_images * OPJ_PATH_LEN * sizeof(
                    char));
            dirptr->filename = (char**) malloc(num_images * sizeof(char*));
            if (!dirptr->filename_buf) {
                return 0;
            }
            for (i = 0; i < num_images; i++) {
                dirptr->filename[i] = dirptr->filename_buf + i * OPJ_PATH_LEN;
            }
        }
        if (load_images(dirptr, img_fol.imgdirpath) == 1) {
            return 0;
        }
        if (num_images == 0) {
            fprintf(stdout, "Folder is empty\n");
            return 0;
        }
    } else {
        num_images = 1;
    }

    for (imageno = 0; imageno < num_images; imageno++) {
        image = ((void*)0);
        fprintf(stderr, "\n");

        if (img_fol.set_imgdir == 1) {
            if (get_next_file(imageno, dirptr, &img_fol, &parameters)) {
                fprintf(stderr, "skipping file...\n");
                continue;
            }
        }
        switch (parameters.decod_format) {
        case 133:
            break;
        case 131:
            break;
        case 134:
            break;
        case 128:
            break;
        case 130:
            break;
        case 129:
            break;
        case 132:
            break;
        default:
            fprintf(stderr, "skipping file...\n");
            continue;
        }




        switch (parameters.decod_format) {
        case 133:
            image = pgxtoimage(parameters.infile, &parameters);
            if (!image) {
                fprintf(stderr, "Unable to load pgx file\n");
                return 1;
            }
            break;

        case 131:
            image = pnmtoimage(parameters.infile, &parameters);
            if (!image) {
                fprintf(stderr, "Unable to load pnm file\n");
                return 1;
            }
            break;

        case 134:
            image = bmptoimage(parameters.infile, &parameters);
            if (!image) {
                fprintf(stderr, "Unable to load bmp file\n");
                return 1;
            }
            break;
        case 130:
            image = rawtoimage(parameters.infile, &parameters, &raw_cp);
            if (!image) {
                fprintf(stderr, "Unable to load raw file\n");
                return 1;
            }
            break;

        case 129:
            image = tgatoimage(parameters.infile, &parameters);
            if (!image) {
                fprintf(stderr, "Unable to load tga file\n");
                return 1;
            }
            break;
        }



        if (!image) {
            fprintf(stderr, "Unable to load file: got no image\n");
            return 1;
        }

        parameters.tcp_mct = image->numcomps == 3 ? 1 : 0;

        if (parameters.cp_cinema) {
            cinema_setup_encoder(&parameters, image, &img_fol);
        }




        if (parameters.cod_format == J2K_CFMT) {
            int codestream_length;
            size_t res;
            opj_cio_t *cio = ((void*)0);
            FILE *f = ((void*)0);


            opj_cinfo_t* cinfo = opj_create_compress(CODEC_J2K);


            opj_set_event_mgr((opj_common_ptr)cinfo, &event_mgr, stderr);


            opj_setup_encoder(cinfo, &parameters, image);



            cio = opj_cio_open((opj_common_ptr)cinfo, ((void*)0), 0);


            if (*indexfilename) {
                bSuccess = opj_encode_with_info(cinfo, cio, image, &cstr_info);
            } else {
                bSuccess = opj_encode(cinfo, cio, image, ((void*)0));
            }
            if (!bSuccess) {
                opj_cio_close(cio);
                fprintf(stderr, "failed to encode image\n");
                return 1;
            }
            codestream_length = cio_tell(cio);


            f = fopen(parameters.outfile, "wb");
            if (!f) {
                fprintf(stderr, "failed to open %s for writing\n", parameters.outfile);
                return 1;
            }
            res = fwrite(cio->buffer, 1, codestream_length, f);
            if (res < (size_t)codestream_length) {
                fprintf(stderr, "failed to write %d (%s)\n", codestream_length,
                        parameters.outfile);
                return 1;
            }
            fclose(f);

            fprintf(stderr, "Generated outfile %s\n", parameters.outfile);

            opj_cio_close(cio);


            if (*indexfilename) {
                bSuccess = write_index_file(&cstr_info, indexfilename);
                if (bSuccess) {
                    fprintf(stderr, "Failed to output index file into [%s]\n", indexfilename);
                }
            }


            opj_destroy_compress(cinfo);
            if (*indexfilename) {
                opj_destroy_cstr_info(&cstr_info);
            }
        } else {
            int codestream_length;
            size_t res;
            opj_cio_t *cio = ((void*)0);
            FILE *f = ((void*)0);
            opj_cinfo_t *cinfo = ((void*)0);


            cinfo = opj_create_compress(CODEC_JP2);


            opj_set_event_mgr((opj_common_ptr)cinfo, &event_mgr, stderr);


            opj_setup_encoder(cinfo, &parameters, image);



            cio = opj_cio_open((opj_common_ptr)cinfo, ((void*)0), 0);


            if (*indexfilename ) {
                bSuccess = opj_encode_with_info(cinfo, cio, image, &cstr_info);
            } else {
                bSuccess = opj_encode(cinfo, cio, image, ((void*)0));
            }
            if (!bSuccess) {
                opj_cio_close(cio);
                fprintf(stderr, "failed to encode image\n");
                return 1;
            }
            codestream_length = cio_tell(cio);


            f = fopen(parameters.outfile, "wb");
            if (!f) {
                fprintf(stderr, "failed to open %s for writing\n", parameters.outfile);
                return 1;
            }
            res = fwrite(cio->buffer, 1, codestream_length, f);
            if (res < (size_t)codestream_length) {
                fprintf(stderr, "failed to write %d (%s)\n", codestream_length,
                        parameters.outfile);
                return 1;
            }
            fclose(f);
            fprintf(stderr, "Generated outfile %s\n", parameters.outfile);

            opj_cio_close(cio);


            if (*indexfilename) {
                bSuccess = write_index_file(&cstr_info, indexfilename);
                if (bSuccess) {
                    fprintf(stderr, "Failed to output index file\n");
                }
            }


            opj_destroy_compress(cinfo);
            if (*indexfilename) {
                opj_destroy_cstr_info(&cstr_info);
            }
        }


        opj_image_destroy(image);
    }


    if (parameters.cp_comment) {
        free(parameters.cp_comment);
    }
    if (parameters.cp_matrice) {
        free(parameters.cp_matrice);
    }

    return 0;
}
