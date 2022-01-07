
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cbSize; int hwndList; int hwndItem; int hwndCombo; int stateButton; int rcButton; int rcItem; } ;
struct TYPE_5__ {int wState; int hWndLBox; int hWndEdit; int self; int buttonRect; int textRect; } ;
typedef int LRESULT ;
typedef TYPE_1__ HEADCOMBO ;
typedef TYPE_2__ COMBOBOXINFO ;


 int CBF_BUTTONDOWN ;
 int FALSE ;
 scalar_t__ IsRectEmpty (int *) ;
 int STATE_SYSTEM_INVISIBLE ;
 int STATE_SYSTEM_PRESSED ;
 int TRUE ;

__attribute__((used)) static LRESULT COMBO_GetComboBoxInfo(const HEADCOMBO *lphc, COMBOBOXINFO *pcbi)
{
    if (!pcbi || (pcbi->cbSize < sizeof(COMBOBOXINFO)))
        return FALSE;

    pcbi->rcItem = lphc->textRect;
    pcbi->rcButton = lphc->buttonRect;
    pcbi->stateButton = 0;
    if (lphc->wState & CBF_BUTTONDOWN)
        pcbi->stateButton |= STATE_SYSTEM_PRESSED;
    if (IsRectEmpty(&lphc->buttonRect))
        pcbi->stateButton |= STATE_SYSTEM_INVISIBLE;
    pcbi->hwndCombo = lphc->self;
    pcbi->hwndItem = lphc->hWndEdit;
    pcbi->hwndList = lphc->hWndLBox;
    return TRUE;
}
