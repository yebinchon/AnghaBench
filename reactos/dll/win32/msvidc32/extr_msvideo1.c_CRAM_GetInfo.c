
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwSize; int szDescription; int szName; void* dwVersionICM; void* dwVersion; scalar_t__ dwFlags; int fccHandler; int fccType; } ;
struct TYPE_5__ {int dwMagic; } ;
typedef TYPE_1__ Msvideo1Context ;
typedef int LRESULT ;
typedef TYPE_2__ ICINFO ;
typedef int DWORD ;


 int ARRAY_SIZE (int ) ;
 int CRAM_MAGIC ;
 int ICTYPE_VIDEO ;
 void* ICVERSION ;
 int IDS_DESCRIPTION ;
 int IDS_NAME ;
 int LoadStringW (int ,int ,int ,int ) ;
 int MSVIDC32_hModule ;

__attribute__((used)) static LRESULT CRAM_GetInfo( const Msvideo1Context *info, ICINFO *icinfo, DWORD dwSize )
{
    if (!icinfo) return sizeof(ICINFO);
    if (dwSize < sizeof(ICINFO)) return 0;

    icinfo->dwSize = sizeof(ICINFO);
    icinfo->fccType = ICTYPE_VIDEO;
    icinfo->fccHandler = info ? info->dwMagic : CRAM_MAGIC;
    icinfo->dwFlags = 0;
    icinfo->dwVersion = ICVERSION;
    icinfo->dwVersionICM = ICVERSION;

    LoadStringW(MSVIDC32_hModule, IDS_NAME, icinfo->szName, ARRAY_SIZE(icinfo->szName));
    LoadStringW(MSVIDC32_hModule, IDS_DESCRIPTION, icinfo->szDescription, ARRAY_SIZE(icinfo->szDescription));


    return sizeof(ICINFO);
}
