
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSCallback ;


 int S_OK ;

__attribute__((used)) static HRESULT ScriptBSC_on_response(BSCallback *bsc, DWORD response_code,
        LPCWSTR response_headers)
{
    return S_OK;
}
