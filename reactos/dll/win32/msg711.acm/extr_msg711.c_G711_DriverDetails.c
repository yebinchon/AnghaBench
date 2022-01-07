
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdwACM; int vdwDriver; int cFormatTags; scalar_t__* szFeatures; int szLicensing; int szCopyright; int szLongName; int szShortName; int * hicon; scalar_t__ cFilterTags; int fdwSupport; int wPid; int wMid; int fccComp; int fccType; } ;
typedef TYPE_1__* PACMDRIVERDETAILSW ;
typedef int LRESULT ;


 int ACMDRIVERDETAILS_FCCCOMP_UNDEFINED ;
 int ACMDRIVERDETAILS_FCCTYPE_AUDIOCODEC ;
 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int ARRAY_SIZE (int ) ;
 int CP_ACP ;
 int MMSYSERR_NOERROR ;
 int MM_MICROSOFT ;
 int MM_MSFT_ACM_G711 ;
 int MultiByteToWideChar (int ,int ,char*,int,int ,int ) ;

__attribute__((used)) static LRESULT G711_DriverDetails(PACMDRIVERDETAILSW add)
{
    add->fccType = ACMDRIVERDETAILS_FCCTYPE_AUDIOCODEC;
    add->fccComp = ACMDRIVERDETAILS_FCCCOMP_UNDEFINED;
    add->wMid = MM_MICROSOFT;
    add->wPid = MM_MSFT_ACM_G711;
    add->vdwACM = 0x01000000;
    add->vdwDriver = 0x01000000;
    add->fdwSupport = ACMDRIVERDETAILS_SUPPORTF_CODEC;
    add->cFormatTags = 3;
    add->cFilterTags = 0;
    add->hicon = ((void*)0);
    MultiByteToWideChar( CP_ACP, 0, "Microsoft CCITT G.711", -1,
                         add->szShortName, ARRAY_SIZE( add->szShortName ));
    MultiByteToWideChar( CP_ACP, 0, "Wine G711 converter", -1,
                         add->szLongName, ARRAY_SIZE( add->szLongName ));
    MultiByteToWideChar( CP_ACP, 0, "Brought to you by the Wine team...", -1,
                         add->szCopyright, ARRAY_SIZE( add->szCopyright ));
    MultiByteToWideChar( CP_ACP, 0, "Refer to LICENSE file", -1,
                         add->szLicensing, ARRAY_SIZE( add->szLicensing ));
    add->szFeatures[0] = 0;

    return MMSYSERR_NOERROR;
}
