
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int S_OK ;
 int winmgmts ;

__attribute__((used)) static HRESULT WinMGMTS_create(void **ppv)
{
    *ppv = &winmgmts;
    return S_OK;
}
