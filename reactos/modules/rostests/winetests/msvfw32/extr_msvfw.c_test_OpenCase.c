
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
struct TYPE_3__ {int dwSize; scalar_t__* szName; } ;
typedef TYPE_1__ ICINFO ;
typedef scalar_t__ HIC ;


 scalar_t__ ICClose (scalar_t__) ;
 scalar_t__ ICERR_OK ;
 int ICGetInfo (scalar_t__,TYPE_1__*,int) ;
 int ICMODE_COMPRESS ;
 int ICMODE_DECOMPRESS ;
 scalar_t__ ICOpen (int ,int ,int ) ;
 scalar_t__ broken (int) ;
 int mmioFOURCC (char,char,char,char) ;
 int ok (int,char*) ;
 int trace (char*,int ) ;
 int wine_dbgstr_w (scalar_t__*) ;

__attribute__((used)) static void test_OpenCase(void)
{
    HIC h;
    ICINFO info;

    h = ICOpen(mmioFOURCC('v','i','d','c'),0,ICMODE_DECOMPRESS);
    ok(0!=h,"ICOpen(vidc.0) failed\n");
    if (h) {
        info.dwSize = sizeof(info);
        info.szName[0] = 0;
        ICGetInfo(h, &info, sizeof(info));
        trace("The default decompressor is %s\n", wine_dbgstr_w(info.szName));
        ok(ICClose(h)==ICERR_OK,"ICClose failed\n");
    }
    h = ICOpen(mmioFOURCC('v','i','d','c'),0,ICMODE_COMPRESS);
    ok(0!=h || broken(h == 0),"ICOpen(vidc.0) failed\n");
    if (h) {
        info.dwSize = sizeof(info);
        info.szName[0] = 0;
        ICGetInfo(h, &info, sizeof(info));
        trace("The default compressor is %s\n", wine_dbgstr_w(info.szName));
        ok(ICClose(h)==ICERR_OK,"ICClose failed\n");
    }




    h = ICOpen(mmioFOURCC('v','i','d','c'),mmioFOURCC('m','s','v','c'),ICMODE_DECOMPRESS);
    ok(0!=h,"ICOpen(vidc.msvc) failed\n");
    if (h) {
        ok(ICClose(h)==ICERR_OK,"ICClose failed\n");
    }
    h = ICOpen(mmioFOURCC('v','i','d','c'),mmioFOURCC('M','S','V','C'),ICMODE_DECOMPRESS);
    ok(0!=h,"ICOpen(vidc.MSVC) failed\n");
    if (h) {
        ok(ICClose(h)==ICERR_OK,"ICClose failed\n");
    }
    h = ICOpen(mmioFOURCC('V','I','D','C'),mmioFOURCC('m','s','v','c'),ICMODE_DECOMPRESS);
    ok(0!=h,"ICOpen(VIDC.msvc) failed\n");
    if (h) {
        ok(ICClose(h)==ICERR_OK,"ICClose failed\n");
    }
    h = ICOpen(mmioFOURCC('V','I','D','C'),mmioFOURCC('M','S','V','C'),ICMODE_DECOMPRESS);
    ok(0!=h,"ICOpen(VIDC.MSVC) failed\n");
    if (h) {
        ok(ICClose(h)==ICERR_OK,"ICClose failed\n");
    }
    h = ICOpen(mmioFOURCC('v','i','d','c'),mmioFOURCC('m','S','v','C'),ICMODE_DECOMPRESS);
    ok(0!=h,"ICOpen(vidc.mSvC) failed\n");
    if (h) {
        ok(ICClose(h)==ICERR_OK,"ICClose failed\n");
    }
    h = ICOpen(mmioFOURCC('v','I','d','C'),mmioFOURCC('m','s','v','c'),ICMODE_DECOMPRESS);
    ok(0!=h,"ICOpen(vIdC.msvc) failed\n");
    if (h) {
        ok(ICClose(h)==ICERR_OK,"ICClose failed\n");
    }
}
