
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int ITextRange ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,int) ;
 int ITextRange_GetEnd (int *,int*) ;
 int ITextRange_GetStart (int *,int*) ;
 int ITextRange_GetStoryLength (int *,int*) ;
 int ITextRange_SetEnd (int *,int) ;
 int ITextRange_SetStart (int *,int) ;
 int S_OK ;


__attribute__((used)) static HRESULT textrange_expand(ITextRange *range, LONG unit, LONG *delta)
{
    LONG expand_start, expand_end;

    switch (unit)
    {
    case 128:
        expand_start = 0;
        ITextRange_GetStoryLength(range, &expand_end);
        break;
    default:
        FIXME("unit %d is not supported\n", unit);
        return E_NOTIMPL;
    }

    if (delta) {
        LONG start, end;

        ITextRange_GetStart(range, &start);
        ITextRange_GetEnd(range, &end);
        *delta = expand_end - expand_start - (end - start);
    }

    ITextRange_SetStart(range, expand_start);
    ITextRange_SetEnd(range, expand_end);

    return S_OK;
}
