
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int (* convert ) (TYPE_1__*,int ,void**,int ,void**) ;} ;
struct TYPE_10__ {int fdwConvert; void* cbDstLengthUsed; void* cbSrcLengthUsed; int pbDst; int pbSrc; void* cbDstLength; void* cbSrcLength; } ;
struct TYPE_9__ {scalar_t__ dwDriver; } ;
typedef TYPE_1__* PACMDRVSTREAMINSTANCE ;
typedef TYPE_2__* PACMDRVSTREAMHEADER ;
typedef int LRESULT ;
typedef void* DWORD ;
typedef TYPE_3__ AcmG711Data ;


 int ACM_STREAMCONVERTF_BLOCKALIGN ;
 int ACM_STREAMCONVERTF_END ;
 int ACM_STREAMCONVERTF_START ;
 int FIXME (char*,int) ;
 int G711_Reset (TYPE_1__*,TYPE_3__*) ;
 int MMSYSERR_NOERROR ;
 int stub1 (TYPE_1__*,int ,void**,int ,void**) ;

__attribute__((used)) static LRESULT G711_StreamConvert(PACMDRVSTREAMINSTANCE adsi, PACMDRVSTREAMHEADER adsh)
{
    AcmG711Data* aad = (AcmG711Data*)adsi->dwDriver;
    DWORD nsrc = adsh->cbSrcLength;
    DWORD ndst = adsh->cbDstLength;

    if (adsh->fdwConvert &
 ~(ACM_STREAMCONVERTF_BLOCKALIGN|
   ACM_STREAMCONVERTF_END|
   ACM_STREAMCONVERTF_START))
    {
 FIXME("Unsupported fdwConvert (%08x), ignoring it\n", adsh->fdwConvert);
    }





    if ((adsh->fdwConvert & ACM_STREAMCONVERTF_START))
    {
 G711_Reset(adsi, aad);
    }

    aad->convert(adsi, adsh->pbSrc, &nsrc, adsh->pbDst, &ndst);
    adsh->cbSrcLengthUsed = nsrc;
    adsh->cbDstLengthUsed = ndst;

    return MMSYSERR_NOERROR;
}
