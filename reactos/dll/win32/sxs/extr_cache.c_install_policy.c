
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assembly {int version; int token; int name; int arch; } ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int BOOL ;


 int CopyFileW (int const*,int *,int ) ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HRESULT_FROM_WIN32 (int ) ;
 int HeapFree (int ,int ,int *) ;
 int S_OK ;
 int WARN (char*,int ) ;
 int * build_policy_filename (int ,int ,int ,int ) ;

__attribute__((used)) static HRESULT install_policy( const WCHAR *manifest, struct assembly *assembly )
{
    WCHAR *dst;
    BOOL ret;



    dst = build_policy_filename( assembly->arch, assembly->name, assembly->token, assembly->version );
    if (!dst) return E_OUTOFMEMORY;

    ret = CopyFileW( manifest, dst, FALSE );
    HeapFree( GetProcessHeap(), 0, dst );
    if (!ret)
    {
        HRESULT hr = HRESULT_FROM_WIN32( GetLastError() );
        WARN("failed to copy policy manifest file 0x%08x\n", hr);
        return hr;
    }
    return S_OK;
}
