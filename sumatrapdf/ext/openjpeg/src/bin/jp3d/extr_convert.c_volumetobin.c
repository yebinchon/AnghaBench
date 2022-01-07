
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* comps; scalar_t__ z0; scalar_t__ y0; scalar_t__ x0; scalar_t__ z1; scalar_t__ y1; scalar_t__ x1; } ;
typedef TYPE_2__ opj_volume_t ;
struct TYPE_4__ {int dx; int w; int dy; int h; int dz; int l; int prec; int x0; int y0; int z0; int* data; scalar_t__ bigendian; int * factor; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int fwrite (char*,int,int,int *) ;
 int int_ceildiv (scalar_t__,int) ;
 void* int_ceildivpow2 (int,int ) ;
 int sprintf (char*,char*,char*) ;
 int stdout ;

int volumetobin(opj_volume_t * volume, char *outfile)
{
    int w, wr, wrr, h, hr, hrr, l, lr, lrr, max;
    int i, j, compno, nbytes;
    int offset, sliceno;
    FILE *fdest = ((void*)0);
    FILE *fimgdest = ((void*)0);

    char name[256];

    for (compno = 0; compno < 1; compno++) {

        fdest = fopen(outfile, "wb");
        if (!fdest) {
            fprintf(stdout, "[ERROR] Failed to open %s for writing\n", outfile);
            return 1;
        }
        fprintf(stdout, "[INFO] Writing outfile %s (%s) \n", outfile,
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

        max = (volume->comps[compno].prec <= 8) ? 255 : (1 <<
                volume->comps[compno].prec) - 1;

        volume->comps[compno].x0 = int_ceildivpow2(volume->comps[compno].x0 -
                                   int_ceildiv(volume->x0, volume->comps[compno].dx),
                                   volume->comps[compno].factor[0]);
        volume->comps[compno].y0 = int_ceildivpow2(volume->comps[compno].y0 -
                                   int_ceildiv(volume->y0, volume->comps[compno].dy),
                                   volume->comps[compno].factor[1]);
        volume->comps[compno].z0 = int_ceildivpow2(volume->comps[compno].z0 -
                                   int_ceildiv(volume->z0, volume->comps[compno].dz),
                                   volume->comps[compno].factor[2]);

        if (volume->comps[0].prec <= 8) {
            nbytes = 1;
        } else if (volume->comps[0].prec <= 16) {
            nbytes = 2;
        } else {
            nbytes = 4;
        }



        for (sliceno = 0; sliceno < lrr; sliceno++) {
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
        }

    }

    fclose(fdest);

    sprintf(name, "%s.img", outfile);
    fimgdest = fopen(name, "w");
    if (!fimgdest) {
        fprintf(stdout, "[ERROR] Failed to open %s for writing\n", name);
        return 1;
    }
    fprintf(fimgdest,
            "Bpp\t%d\nColor Map\t2\nDimensions\t%d\t%d\t%d\nResolution(mm)\t%d\t%d\t%d\t\n",
            volume->comps[0].prec, wrr, hrr, lrr, volume->comps[0].dx, volume->comps[0].dy,
            volume->comps[0].dz);

    fclose(fimgdest);
    return 0;
}
