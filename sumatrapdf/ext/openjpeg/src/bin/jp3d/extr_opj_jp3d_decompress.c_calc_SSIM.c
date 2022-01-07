
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int x1; int x0; int y1; int y0; int z1; int z0; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_volume_t ;
struct TYPE_5__ {int prec; double* data; } ;


 double sqrt (double) ;

__attribute__((used)) static double calc_SSIM(opj_volume_t *original, opj_volume_t *decoded)
{
    int max, i, compno = 0, size, sizeM;
    double sum;
    double mux = 0.0, muy = 0.0, sigmax = 0.0, sigmay = 0.0,
           sigmaxy = 0.0 ;
    double lcomp, ccomp, scomp;
    double C1, C2, C3;

    max = (original->comps[compno].prec <= 8) ? 255 : (1 <<
            original->comps[compno].prec) - 1;
    size = (original->x1 - original->x0) * (original->y1 - original->y0) *
           (original->z1 - original->z0);





    sizeM = size;
    for (sum = 0, i = 0; i < sizeM; ++i) {

        mux += original->comps[compno].data[i];
        muy += decoded->comps[compno].data[i];
    }
    mux /= sizeM;
    muy /= sizeM;


    for (sum = 0, i = 0; i < sizeM; ++i) {

        sigmax += (original->comps[compno].data[i] - mux) *
                  (original->comps[compno].data[i] - mux);
        sigmay += (decoded->comps[compno].data[i] - muy) *
                  (decoded->comps[compno].data[i] - muy);
        sigmaxy += (original->comps[compno].data[i] - mux) *
                   (decoded->comps[compno].data[i] - muy);
    }
    sigmax /= sizeM - 1;
    sigmay /= sizeM - 1;
    sigmaxy /= sizeM - 1;

    sigmax = sqrt(sigmax);
    sigmay = sqrt(sigmay);
    sigmaxy = sqrt(sigmaxy);





    C1 = (0.01 * max) * (0.01 * max);
    lcomp = ((2 * mux * muy) + C1) / ((mux * mux) + (muy * mux) + C1);

    C2 = (0.03 * max) * (0.03 * max);
    ccomp = ((2 * sigmax * sigmay) + C2) / ((sigmax * sigmax) +
                                            (sigmay * sigmay) + C2);

    C3 = C2 / 2;
    scomp = (sigmaxy + C3) / (sigmax * sigmay + C3);


    sum = lcomp * ccomp * scomp;
    return sum;
}
