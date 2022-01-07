
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int vdwACM; int vdwDriver; int cFormatTags; scalar_t__* szFeatures; int szLicensing; int szCopyright; int szLongName; int szShortName; int * hicon; scalar_t__ cFilterTags; int fdwSupport; int wPid; int wMid; int fccComp; int fccType; } ;
typedef TYPE_1__* PACMDRIVERDETAILSW ;
typedef int LRESULT ;


 int ACMDRIVERDETAILS_FCCCOMP_UNDEFINED ;
 int ACMDRIVERDETAILS_FCCTYPE_AUDIOCODEC ;
 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int CP_ACP ;
 int MMSYSERR_NOERROR ;
 int MM_FHGIIS_MPEGLAYER3_DECODE ;
 int MM_FRAUNHOFER_IIS ;
 int MultiByteToWideChar (int ,int ,char*,int,int ,int) ;

__attribute__((used)) static LRESULT MPEG3_DriverDetails(PACMDRIVERDETAILSW add)
{
    add->fccType = ACMDRIVERDETAILS_FCCTYPE_AUDIOCODEC;
    add->fccComp = ACMDRIVERDETAILS_FCCCOMP_UNDEFINED;
    add->wMid = MM_FRAUNHOFER_IIS;
    add->wPid = MM_FHGIIS_MPEGLAYER3_DECODE;
    add->vdwACM = 0x01000000;
    add->vdwDriver = 0x01000000;
    add->fdwSupport = ACMDRIVERDETAILS_SUPPORTF_CODEC;
    add->cFormatTags = 3;
    add->cFilterTags = 0;
    add->hicon = ((void*)0);
    MultiByteToWideChar( CP_ACP, 0, "MPEG Layer-3 Codec", -1,
                         add->szShortName, sizeof(add->szShortName)/sizeof(WCHAR) );
    MultiByteToWideChar( CP_ACP, 0, "Wine MPEG3 decoder", -1,
                         add->szLongName, sizeof(add->szLongName)/sizeof(WCHAR) );
    MultiByteToWideChar( CP_ACP, 0, "Brought to you by the Wine team...", -1,
                         add->szCopyright, sizeof(add->szCopyright)/sizeof(WCHAR) );
    MultiByteToWideChar( CP_ACP, 0, "Refer to LICENSE file", -1,
                         add->szLicensing, sizeof(add->szLicensing)/sizeof(WCHAR) );
    add->szFeatures[0] = 0;

    return MMSYSERR_NOERROR;
}
