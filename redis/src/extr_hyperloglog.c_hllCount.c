
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hllhdr {scalar_t__ encoding; int registers; } ;
typedef int sds ;


 double HLL_ALPHA_INF ;
 scalar_t__ HLL_DENSE ;
 scalar_t__ HLL_HDR_SIZE ;
 int HLL_Q ;
 scalar_t__ HLL_RAW ;
 double HLL_REGISTERS ;
 scalar_t__ HLL_SPARSE ;
 int hllDenseRegHisto (int ,int*) ;
 int hllRawRegHisto (int ,int*) ;
 double hllSigma (int) ;
 int hllSparseRegHisto (int ,scalar_t__,int*,int*) ;
 double hllTau (double) ;
 double llroundl (double) ;
 scalar_t__ sdslen (int ) ;
 int serverPanic (char*) ;

uint64_t hllCount(struct hllhdr *hdr, int *invalid) {
    double m = HLL_REGISTERS;
    double E;
    int j;





    int reghisto[64] = {0};


    if (hdr->encoding == HLL_DENSE) {
        hllDenseRegHisto(hdr->registers,reghisto);
    } else if (hdr->encoding == HLL_SPARSE) {
        hllSparseRegHisto(hdr->registers,
                         sdslen((sds)hdr)-HLL_HDR_SIZE,invalid,reghisto);
    } else if (hdr->encoding == HLL_RAW) {
        hllRawRegHisto(hdr->registers,reghisto);
    } else {
        serverPanic("Unknown HyperLogLog encoding in hllCount()");
    }




    double z = m * hllTau((m-reghisto[HLL_Q+1])/(double)m);
    for (j = HLL_Q; j >= 1; --j) {
        z += reghisto[j];
        z *= 0.5;
    }
    z += m * hllSigma(reghisto[0]/(double)m);
    E = llroundl(HLL_ALPHA_INF*m*m/z);

    return (uint64_t) E;
}
