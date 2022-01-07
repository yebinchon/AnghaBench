
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef int BSCallback ;


 int S_OK ;

__attribute__((used)) static HRESULT ScriptBSC_on_progress(BSCallback *bsc, ULONG status_code, LPCWSTR status_text)
{
    return S_OK;
}
