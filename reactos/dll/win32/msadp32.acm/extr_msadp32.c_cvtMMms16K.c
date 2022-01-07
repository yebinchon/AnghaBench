
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* pwfxSrc; TYPE_1__* pwfxDst; } ;
struct TYPE_8__ {int wSamplesPerBlock; } ;
struct TYPE_7__ {int nBlockAlign; } ;
struct TYPE_6__ {int nBlockAlign; int wBitsPerSample; } ;
typedef int* LPDWORD ;
typedef int DWORD ;
typedef TYPE_3__ ADPCMWAVEFORMAT ;
typedef int ADPCMCOEFSET ;
typedef TYPE_4__ ACMDRVSTREAMINSTANCE ;


 unsigned char C168 (int) ;
 int * MSADPCM_CoeffSet ;
 int R16 (unsigned char const*) ;
 int W16 (unsigned char*,int) ;
 int assert (int) ;
 int min (int,int) ;
 int process_nibble (unsigned char const,int*,int*,int*,int *) ;

__attribute__((used)) static void cvtMMms16K(const ACMDRVSTREAMINSTANCE *adsi,
                        const unsigned char* src, LPDWORD nsrc,
                        unsigned char* dst, LPDWORD ndst)
{
    int idelta;
    int sample1, sample2;
    ADPCMCOEFSET coeff;
    int nsamp;
    int nsamp_blk = ((ADPCMWAVEFORMAT*)adsi->pwfxSrc)->wSamplesPerBlock;
    DWORD nblock = min(*nsrc / adsi->pwfxSrc->nBlockAlign,
                                     *ndst / (nsamp_blk * adsi->pwfxDst->nBlockAlign));

    *nsrc = nblock * adsi->pwfxSrc->nBlockAlign;
    *ndst = nblock * nsamp_blk * adsi->pwfxDst->nBlockAlign;

    nsamp_blk -= 2;
    for (; nblock > 0; nblock--)
    {
        const unsigned char* in_src = src;

        assert(*src <= 6);
        coeff = MSADPCM_CoeffSet[*src++];

        idelta = R16(src); src += 2;
        sample1 = R16(src); src += 2;
        sample2 = R16(src); src += 2;


        if(adsi->pwfxDst->wBitsPerSample == 8){
            *dst = C168(sample2); ++dst;
            *dst = C168(sample1); ++dst;

            for (nsamp = nsamp_blk; nsamp > 0; nsamp -= 2)
            {
                process_nibble(*src >> 4, &idelta, &sample1, &sample2, &coeff);
                *dst = C168(sample1); ++dst;
                process_nibble(*src++ & 0x0F, &idelta, &sample1, &sample2, &coeff);
                *dst = C168(sample1); ++dst;
            }
        }else if(adsi->pwfxDst->wBitsPerSample == 16){
            W16(dst, sample2); dst += 2;
            W16(dst, sample1); dst += 2;

            for (nsamp = nsamp_blk; nsamp > 0; nsamp -= 2)
            {
                process_nibble(*src >> 4, &idelta, &sample1, &sample2, &coeff);
                W16(dst, sample1); dst += 2;
                process_nibble(*src++ & 0x0F, &idelta, &sample1, &sample2, &coeff);
                W16(dst, sample1); dst += 2;
            }
        }

        src = in_src + adsi->pwfxSrc->nBlockAlign;
    }
}
