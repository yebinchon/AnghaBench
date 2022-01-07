
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int FIXME (char*,int *,int ,int *,int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT exec_htmleditmode(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    FIXME("(%p)->(%08x %p %p)\n", This, cmdexecopt, in, out);
    return S_OK;
}
