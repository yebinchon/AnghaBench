
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fccHandler; } ;
struct TYPE_5__ {int dwSize; int dwFlags; int szDescription; int szName; void* dwVersionICM; void* dwVersion; int fccHandler; int fccType; } ;
typedef int LRESULT ;
typedef TYPE_1__ ICINFO ;
typedef int DWORD ;
typedef TYPE_2__ CodecInfo ;


 int ARRAY_SIZE (int ) ;
 int FOURCC_MRLE ;
 int ICTYPE_VIDEO ;
 void* ICVERSION ;
 int IDS_DESCRIPTION ;
 int IDS_NAME ;
 int LoadStringW (int ,int ,int ,int ) ;
 int MSRLE32_hModule ;
 int VIDCF_CRUNCH ;
 int VIDCF_FASTTEMPORALC ;
 int VIDCF_QUALITY ;
 int VIDCF_TEMPORAL ;
 int assert (int ) ;

__attribute__((used)) static LRESULT GetInfo(const CodecInfo *pi, ICINFO *icinfo, DWORD dwSize)
{

  assert(pi != ((void*)0));


  if (icinfo == ((void*)0))
    return sizeof(ICINFO);
  if (dwSize < sizeof(ICINFO))
    return 0;

  icinfo->dwSize = sizeof(ICINFO);
  icinfo->fccType = ICTYPE_VIDEO;
  icinfo->fccHandler = (pi != ((void*)0) ? pi->fccHandler : FOURCC_MRLE);
  icinfo->dwFlags = VIDCF_QUALITY | VIDCF_TEMPORAL | VIDCF_CRUNCH | VIDCF_FASTTEMPORALC;
  icinfo->dwVersion = ICVERSION;
  icinfo->dwVersionICM = ICVERSION;

  LoadStringW(MSRLE32_hModule, IDS_NAME, icinfo->szName, ARRAY_SIZE(icinfo->szName));
  LoadStringW(MSRLE32_hModule, IDS_DESCRIPTION, icinfo->szDescription, ARRAY_SIZE(icinfo->szDescription));

  return sizeof(ICINFO);
}
