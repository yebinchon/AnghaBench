
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numcomps; TYPE_2__* comps; } ;
typedef TYPE_1__ opj_image_t ;
struct TYPE_5__ {int w; int h; int prec; int* data; scalar_t__ sgnd; } ;
typedef TYPE_2__ opj_image_comp_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 size_t fwrite (char*,int,int,int *) ;
 scalar_t__ malloc (size_t const) ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t const) ;

int imagetopgx(opj_image_t * image, const char *outfile)
{
    int w, h;
    int i, j, compno;
    FILE *fdest = ((void*)0);

    for (compno = 0; compno < image->numcomps; compno++) {
        opj_image_comp_t *comp = &image->comps[compno];
        char bname[256];
        char *name = bname;
        int nbytes = 0;
        size_t res;
        const size_t olen = strlen(outfile);
        const size_t dotpos = olen - 4;
        const size_t total = dotpos + 1 + 1 + 4;
        if (outfile[dotpos] != '.') {

            fprintf(stderr, "ERROR -> Impossible happen.");
            return 1;
        }
        if (total > 256) {
            name = (char*)malloc(total + 1);
        }
        strncpy(name, outfile, dotpos);

        sprintf(name + dotpos, "_%d.pgx", compno);



        fdest = fopen(name, "wb");
        if (!fdest) {
            fprintf(stderr, "ERROR -> failed to open %s for writing\n", name);
            return 1;
        }

        if (total > 256) {
            free(name);
        }

        w = image->comps[compno].w;
        h = image->comps[compno].h;

        fprintf(fdest, "PG ML %c %d %d %d\n", comp->sgnd ? '-' : '+', comp->prec, w, h);
        if (comp->prec <= 8) {
            nbytes = 1;
        } else if (comp->prec <= 16) {
            nbytes = 2;
        } else {
            nbytes = 4;
        }
        for (i = 0; i < w * h; i++) {
            int v = image->comps[compno].data[i];
            for (j = nbytes - 1; j >= 0; j--) {
                char byte = (char)(v >> (j * 8));
                res = fwrite(&byte, 1, 1, fdest);
                if (res < 1) {
                    fprintf(stderr, "failed to write 1 byte for %s\n", name);
                    fclose(fdest);
                    return 1;
                }
            }
        }
        fclose(fdest);
    }

    return 0;
}
