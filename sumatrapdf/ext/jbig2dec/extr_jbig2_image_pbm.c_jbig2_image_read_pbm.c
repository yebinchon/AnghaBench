
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int height; int stride; int data; } ;
typedef TYPE_1__ Jbig2Image ;
typedef int Jbig2Ctx ;
typedef int FILE ;


 int EOF ;
 scalar_t__ feof (int *) ;
 int fgetc (int *) ;
 int fprintf (int ,char*,...) ;
 int fread (int ,int,int,int *) ;
 scalar_t__ isdigit (int) ;
 TYPE_1__* jbig2_image_new (int *,int,int) ;
 int jbig2_image_release (int *,TYPE_1__*) ;
 int sscanf (char*,char*,int*) ;
 int stderr ;

Jbig2Image *
jbig2_image_read_pbm(Jbig2Ctx *ctx, FILE *in)
{
    int i, dim[2];
    int done;
    Jbig2Image *image;
    int c;
    char buf[32];


    while ((c = fgetc(in)) != 'P') {
        if (feof(in))
            return ((void*)0);
    }
    if ((c = fgetc(in)) != '4') {
        fprintf(stderr, "not a binary pbm file.\n");
        return ((void*)0);
    }




    done = 0;
    i = 0;
    while (done < 2) {
        c = fgetc(in);

        if (c == ' ' || c == '\t' || c == '\r' || c == '\n')
            continue;

        if (c == '#') {
            while ((c = fgetc(in)) != '\n');
            continue;
        }

        if (c == EOF) {
            fprintf(stderr, "end-of-file parsing pbm header\n");
            return ((void*)0);
        }
        if (isdigit(c)) {
            buf[i++] = c;
            while (isdigit(c = fgetc(in))) {
                if (i >= 32) {
                    fprintf(stderr, "pbm parsing error\n");
                    return ((void*)0);
                }
                buf[i++] = c;
            }
            buf[i] = '\0';
            if (sscanf(buf, "%d", &dim[done]) != 1) {
                fprintf(stderr, "failed to read pbm image dimensions\n");
                return ((void*)0);
            }
            i = 0;
            done++;
        }
    }

    image = jbig2_image_new(ctx, dim[0], dim[1]);
    if (image == ((void*)0)) {
        fprintf(stderr, "failed to allocate %dx%d image for pbm file\n", dim[0], dim[1]);
        return ((void*)0);
    }


    (void)fread(image->data, 1, image->height * image->stride, in);
    if (feof(in)) {
        fprintf(stderr, "unexpected end of pbm file.\n");
        jbig2_image_release(ctx, image);
        return ((void*)0);
    }

    return image;
}
