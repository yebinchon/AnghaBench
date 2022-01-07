
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numcomps; int z1; int z0; int x1; int x0; int y1; int y0; TYPE_2__* comps; } ;
typedef TYPE_1__ opj_volume_t ;
struct TYPE_5__ {int w; int h; int l; int prec; int* data; scalar_t__ bigendian; scalar_t__ sgnd; int * factor; int dz; int dy; int dx; } ;
typedef TYPE_2__ opj_volume_comp_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int fwrite (char*,int,int,int *) ;
 int int_ceildiv (int,int ) ;
 int int_ceildivpow2 (int,int ) ;
 int sprintf (char*,char*,char*,...) ;
 int stdout ;

int volumetopgx(opj_volume_t * volume, char *outfile)
{
    int w, wr, wrr, h, hr, hrr, l, lr, lrr;
    int i, j, compno, offset, sliceno;
    FILE *fdest = ((void*)0);

    for (compno = 0; compno < volume->numcomps; compno++) {
        opj_volume_comp_t *comp = &volume->comps[compno];
        char name[256];
        int nbytes = 0;
        char *tmp = outfile;
        while (*tmp) {
            tmp++;
        }
        while (*tmp != '.') {
            tmp--;
        }
        *tmp = '\0';
        for (sliceno = 0; sliceno < volume->z1 - volume->z0; sliceno++) {

            if (volume->numcomps > 1) {
                sprintf(name, "%s%d-%d.pgx", outfile, sliceno + 1, compno);
            } else if ((volume->z1 - volume->z0) > 1) {
                sprintf(name, "%s%d.pgx", outfile, sliceno + 1);
            } else {
                sprintf(name, "%s.pgx", outfile);
            }

            fdest = fopen(name, "wb");
            if (!fdest) {
                fprintf(stdout, "[ERROR] Failed to open %s for writing \n", name);
                return 1;
            }

            fprintf(stdout, "[INFO] Writing in %s (%s)\n", name,
                    volume->comps[0].bigendian ? "Bigendian" : "Little-endian");

            w = int_ceildiv(volume->x1 - volume->x0, volume->comps[compno].dx);
            wr = volume->comps[compno].w;
            wrr = int_ceildivpow2(volume->comps[compno].w, volume->comps[compno].factor[0]);

            h = int_ceildiv(volume->y1 - volume->y0, volume->comps[compno].dy);
            hr = volume->comps[compno].h;
            hrr = int_ceildivpow2(volume->comps[compno].h, volume->comps[compno].factor[1]);

            l = int_ceildiv(volume->z1 - volume->z0, volume->comps[compno].dz);
            lr = volume->comps[compno].l;
            lrr = int_ceildivpow2(volume->comps[compno].l, volume->comps[compno].factor[2]);

            fprintf(fdest, "PG %c%c %c%d %d %d\n", comp->bigendian ? 'M' : 'L',
                    comp->bigendian ? 'L' : 'M', comp->sgnd ? '-' : '+', comp->prec, wr, hr);
            if (comp->prec <= 8) {
                nbytes = 1;
            } else if (comp->prec <= 16) {
                nbytes = 2;
            } else {
                nbytes = 4;
            }

            offset = (sliceno / lrr * l) + (sliceno % lrr);
            offset = wrr * hrr * offset;

            for (i = 0; i < wrr * hrr; i++) {
                int v = volume->comps[0].data[(i / wrr * w) + (i % wrr) + offset];
                if (volume->comps[0].bigendian) {
                    for (j = nbytes - 1; j >= 0; j--) {
                        char byte = (char)((v >> (j * 8)) & 0xff);
                        fwrite(&byte, 1, 1, fdest);
                    }
                } else {
                    for (j = 0; j <= nbytes - 1; j++) {
                        char byte = (char)((v >> (j * 8)) & 0xff);
                        fwrite(&byte, 1, 1, fdest);
                    }
                }
            }

            fclose(fdest);
        }
    }

    return 0;
}
