
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int statstg ;
typedef float WCHAR ;
struct TYPE_6__ {int pwcsName; } ;
typedef TYPE_1__ STATSTG ;
typedef int IStorage ;
typedef int IEnumSTATSTG ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CoTaskMemFree (int ) ;
 int DeleteFileA (char const*) ;
 scalar_t__ FALSE ;
 scalar_t__ IEnumSTATSTG_Next (int *,int,TYPE_1__*,int*) ;
 int IEnumSTATSTG_Release (int *) ;
 scalar_t__ IStorage_EnumElements (int *,int ,int *,int ,int **) ;
 int IStorage_Release (int *) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (float const*,int,int ,int **) ;
 scalar_t__ TRUE ;
 scalar_t__ WriteFmtUserTypeStg (int *,int ,float*) ;
 scalar_t__ memcmp (TYPE_1__*,TYPE_1__ const*,int) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,...) ;
 scalar_t__ strcmp_ww (int ,float const*) ;

__attribute__((used)) static void test_fmtusertypestg(void)
{
    IStorage *stg;
    IEnumSTATSTG *stat;
    HRESULT hr;
    static const char fileA[] = {'f','m','t','t','e','s','t',0};
    static const WCHAR fileW[] = {'f','m','t','t','e','s','t',0};
    static WCHAR userTypeW[] = {'S','t','g','U','s','r','T','y','p','e',0};
    static const WCHAR strmNameW[] = {1,'C','o','m','p','O','b','j',0};
    static const STATSTG statstg_null;

    hr = StgCreateDocfile( fileW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &stg);
    ok(hr == S_OK, "should succeed, res=%x\n", hr);

    if (SUCCEEDED(hr))
    {

        hr = WriteFmtUserTypeStg(stg, 0, userTypeW);
        ok(hr == S_OK, "should succeed, res=%x\n", hr);


        hr = IStorage_EnumElements(stg, 0, ((void*)0), 0, &stat);
        ok(hr == S_OK, "should succeed, res=%x\n", hr);
        if (SUCCEEDED(hr))
        {
            BOOL found = FALSE;
            STATSTG statstg;
            DWORD got;
            memset(&statstg, 0xad, sizeof(statstg));
            while ((hr = IEnumSTATSTG_Next(stat, 1, &statstg, &got)) == S_OK && got == 1)
            {
                if (strcmp_ww(statstg.pwcsName, strmNameW) == 0)
                    found = TRUE;
                else
                    ok(0, "found unexpected stream or storage\n");
                CoTaskMemFree(statstg.pwcsName);
            }
            ok(memcmp(&statstg, &statstg_null, sizeof(statstg)) == 0, "statstg is not zeroed\n");
            ok(found == TRUE, "expected storage to contain stream \\0001CompObj\n");
            IEnumSTATSTG_Release(stat);
        }


        hr = WriteFmtUserTypeStg(stg, 0, userTypeW);
        ok(hr == S_OK, "should succeed, res=%x\n", hr);


        hr = IStorage_EnumElements(stg, 0, ((void*)0), 0, &stat);
        ok(hr == S_OK, "should succeed, res=%x\n", hr);
        if (SUCCEEDED(hr))
        {
            BOOL found = FALSE;
            STATSTG statstg;
            DWORD got;
            memset(&statstg, 0xad, sizeof(statstg));
            while ((hr = IEnumSTATSTG_Next(stat, 1, &statstg, &got)) == S_OK && got == 1)
            {
                if (strcmp_ww(statstg.pwcsName, strmNameW) == 0)
                    found = TRUE;
                else
                    ok(0, "found unexpected stream or storage\n");
                CoTaskMemFree(statstg.pwcsName);
            }
            ok(memcmp(&statstg, &statstg_null, sizeof(statstg)) == 0, "statstg is not zeroed\n");
            ok(found == TRUE, "expected storage to contain stream \\0001CompObj\n");
            IEnumSTATSTG_Release(stat);
        }

        IStorage_Release(stg);
        DeleteFileA( fileA );
    }
}
