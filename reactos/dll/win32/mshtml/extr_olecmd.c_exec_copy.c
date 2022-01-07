
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int NSCMD_COPY ;
 int S_OK ;
 int TRACE (char*,int *,int ,int ,int *) ;
 int debugstr_variant (int *) ;
 int do_ns_command (int *,int ,int *) ;

__attribute__((used)) static HRESULT exec_copy(HTMLDocument *This, DWORD nCmdexecopt, VARIANT *pvaIn, VARIANT *pvaOut)
{
    TRACE("(%p)->(%d %s %p)\n", This, nCmdexecopt, debugstr_variant(pvaIn), pvaOut);

    do_ns_command(This, NSCMD_COPY, ((void*)0));
    return S_OK;
}
