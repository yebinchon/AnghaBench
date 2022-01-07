
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int texthost; } ;
struct TYPE_6__ {int cbSize; int dwMask; int sStyle; int wAlignment; int bOutlineLevel; } ;
typedef TYPE_1__ PARAFORMAT2 ;
typedef int PARAFORMAT ;
typedef TYPE_2__ ME_TextEditor ;
typedef int HRESULT ;


 int ITextHost_OnTxParaFormatChange (int ,int *) ;
 int ITextHost_TxGetParaFormat (int ,int const**) ;
 int PFA_LEFT ;
 int PFM_ALIGNMENT ;
 int PFM_ALL2 ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;

void ME_SetDefaultParaFormat(ME_TextEditor *editor, PARAFORMAT2 *pFmt)
{
    const PARAFORMAT2 *host_fmt;
    HRESULT hr;

    ZeroMemory(pFmt, sizeof(PARAFORMAT2));
    pFmt->cbSize = sizeof(PARAFORMAT2);
    pFmt->dwMask = PFM_ALL2;
    pFmt->wAlignment = PFA_LEFT;
    pFmt->sStyle = -1;
    pFmt->bOutlineLevel = TRUE;

    hr = ITextHost_TxGetParaFormat( editor->texthost, (const PARAFORMAT **)&host_fmt );
    if (SUCCEEDED(hr))
    {

        if (host_fmt->dwMask & PFM_ALIGNMENT)
            pFmt->wAlignment = host_fmt->wAlignment;
        ITextHost_OnTxParaFormatChange( editor->texthost, (PARAFORMAT *)pFmt );
    }
}
