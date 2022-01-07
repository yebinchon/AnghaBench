
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int options ;
typedef int * PAVISTREAM ;
typedef int * LPAVICOMPRESSOPTIONS ;
typedef scalar_t__ LONG ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef int AVICOMPRESSOPTIONS ;


 scalar_t__ AVIERR_OK ;
 scalar_t__ AVISaveOptions (int ,int,int,int **,int **) ;
 scalar_t__ AVISaveOptionsFree (int,int **) ;
 scalar_t__ AVIStreamRelease (int *) ;
 scalar_t__ CreateEditableStream (int **,int *) ;
 scalar_t__ EditStreamSetNameA (int *,int ) ;
 int GetLastError () ;
 int ICMF_CHOOSE_ALLCOMPRESSORS ;
 int ICMF_CHOOSE_DATARATE ;
 int ICMF_CHOOSE_KEYFRAME ;
 int SetLastError (int) ;
 int ZeroMemory (int *,int) ;
 int ok (int,char*,scalar_t__,...) ;
 int trace (char*,scalar_t__,int ,int ) ;
 int winetest0 ;
 int winetest1 ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_AVISaveOptions(void)
{
    AVICOMPRESSOPTIONS options[2];
    LPAVICOMPRESSOPTIONS poptions[2];
    PAVISTREAM streams[2] = {((void*)0), ((void*)0)};
    HRESULT hres;
    DWORD res;
    LONG lres;

    poptions[0] = &options[0];
    poptions[1] = &options[1];
    ZeroMemory(options, sizeof(options));

    SetLastError(0xdeadbeef);
    hres = CreateEditableStream(&streams[0], ((void*)0));
    ok(hres == AVIERR_OK, "0: got 0x%x and %p (expected AVIERR_OK)\n", hres, streams[0]);

    SetLastError(0xdeadbeef);
    hres = CreateEditableStream(&streams[1], ((void*)0));
    ok(hres == AVIERR_OK, "1: got 0x%x and %p (expected AVIERR_OK)\n", hres, streams[1]);

    SetLastError(0xdeadbeef);
    hres = EditStreamSetNameA(streams[0], winetest0);
    ok(hres == AVIERR_OK, "0: got 0x%x (expected AVIERR_OK)\n", hres);

    SetLastError(0xdeadbeef);
    hres = EditStreamSetNameA(streams[1], winetest1);
    ok(hres == AVIERR_OK, "1: got 0x%x (expected AVIERR_OK)\n", hres);

    if (winetest_interactive) {
        SetLastError(0xdeadbeef);
        res = AVISaveOptions(0, ICMF_CHOOSE_DATARATE |ICMF_CHOOSE_KEYFRAME | ICMF_CHOOSE_ALLCOMPRESSORS,
                             2, streams, poptions);
        trace("got %u with 0x%x/%u\n", res, GetLastError(), GetLastError());
    }

    SetLastError(0xdeadbeef);
    lres = AVISaveOptionsFree(2, poptions);
    ok(lres == AVIERR_OK, "got 0x%x with 0x%x/%u\n", lres, GetLastError(), GetLastError());

    SetLastError(0xdeadbeef);
    res = AVIStreamRelease(streams[0]);
    ok(res == 0, "0: got refcount %u (expected 0)\n", res);

    SetLastError(0xdeadbeef);
    res = AVIStreamRelease(streams[1]);
    ok(res == 0, "1: got refcount %u (expected 0)\n", res);

}
