
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int x1; int x0; int y1; int y0; int z1; int z0; int numcomps; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_volume_t ;
struct TYPE_5__ {int prec; int* data; } ;


 int fprintf (int ,char*) ;
 int log10 (int) ;
 int stdout ;

__attribute__((used)) static double calc_PSNR(opj_volume_t *original, opj_volume_t *decoded)
{
    int max, i, k, compno = 0, size;
    double sum, total = 0;
    int global = 1;

    max = (original->comps[compno].prec <= 8) ? 255 : (1 <<
            original->comps[compno].prec) - 1;
    if (global) {
        size = (original->x1 - original->x0) * (original->y1 - original->y0) *
               (original->z1 - original->z0);

        for (compno = 0; compno < original->numcomps; compno++) {
            for (sum = 0, i = 0; i < size; ++i) {
                if ((decoded->comps[compno].data[i] < 0) ||
                        (decoded->comps[compno].data[i] > max)) {
                    fprintf(stdout, "[WARNING] Data out of range during PSNR computing...\n");
                } else {
                    sum += (original->comps[compno].data[i] - decoded->comps[compno].data[i]) *
                           (original->comps[compno].data[i] - decoded->comps[compno].data[i]);
                }
            }
        }
        sum /= size;
        total = ((sum == 0.0) ? 0.0 : 10 * log10(max * max / sum));
    } else {
        size = (original->x1 - original->x0) * (original->y1 - original->y0);

        for (k = 0; k < original->z1 - original->z0; k++) {
            int offset = k * size;
            for (sum = 0, compno = 0; compno < original->numcomps; compno++) {
                for (i = 0; i < size; ++i) {
                    if ((decoded->comps[compno].data[i + offset] < 0) ||
                            (decoded->comps[compno].data[i + offset] > max)) {
                        fprintf(stdout, "[WARNING] Data out of range during PSNR computing...\n");
                    } else {
                        sum += (original->comps[compno].data[i + offset] - decoded->comps[compno].data[i
                                + offset]) * (original->comps[compno].data[i + offset] -
                                              decoded->comps[compno].data[i + offset]);
                    }
                }
            }
            sum /= size;
            total = total + ((sum == 0.0) ? 0.0 : 10 * log10(max * max / sum));
        }

    }
    if (total == 0) {
        return -1.0;
    }

    return total;

}
