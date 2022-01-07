
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_TextEditor ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 scalar_t__ ME_GetTextLength (int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT textrange_get_storylength(ME_TextEditor *editor, LONG *length)
{
    if (!length)
        return E_INVALIDARG;

    *length = ME_GetTextLength(editor) + 1;
    return S_OK;
}
