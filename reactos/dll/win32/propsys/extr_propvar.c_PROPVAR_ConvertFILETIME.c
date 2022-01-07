
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VARTYPE ;
struct TYPE_6__ {int pszVal; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_7__ {int wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; int wMilliseconds; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef TYPE_3__ PROPVARIANT ;
typedef int HRESULT ;
typedef int FILETIME ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FIXME (char*,int) ;
 int FileTimeToSystemTime (int const*,TYPE_2__*) ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;
 int S_OK ;

 int sprintf (int ,char*,int,int,int,int,int,int,int) ;

__attribute__((used)) static HRESULT PROPVAR_ConvertFILETIME(const FILETIME *ft, PROPVARIANT *ppropvarDest, VARTYPE vt)
{
    SYSTEMTIME time;

    FileTimeToSystemTime(ft, &time);

    switch (vt)
    {
        case 128:
            ppropvarDest->u.pszVal = HeapAlloc(GetProcessHeap(), 0, 64);
            if (!ppropvarDest->u.pszVal)
                return E_OUTOFMEMORY;

            sprintf( ppropvarDest->u.pszVal, "%04d/%02d/%02d:%02d:%02d:%02d.%03d",
                      time.wYear, time.wMonth, time.wDay,
                      time.wHour, time.wMinute, time.wSecond,
                      time.wMilliseconds );

            return S_OK;

        default:
            FIXME("Unhandled target type: %d\n", vt);
    }

    return E_FAIL;
}
