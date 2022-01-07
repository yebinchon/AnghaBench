
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int item ;
typedef int hdr ;
typedef void* WORD ;
typedef int VOID ;
struct TYPE_11__ {scalar_t__ iStartBmp; scalar_t__ Delta; } ;
struct TYPE_8__ {scalar_t__ dwData; int fsStyle; int fsState; scalar_t__ idCommand; scalar_t__ iBitmap; } ;
struct TYPE_10__ {int iItem; int cButtons; scalar_t__* pCurrent; TYPE_1__ tbButton; scalar_t__ cbData; scalar_t__* pData; } ;
struct TYPE_9__ {int cButtons; void* iExtP1; int fsStyle; int fsState; void* idCommand; void* iBitmap; int version; int magic; } ;
typedef TYPE_2__ TBSAVEITEM ;
typedef TYPE_2__ TBSAVEHDR ;
typedef TYPE_4__* LPNMTBSAVE ;
typedef size_t INT ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int LPTR ;
 scalar_t__* LocalAlloc (int ,scalar_t__) ;
 int TBHDR_MAGIC ;
 int TBHDR_VERSION ;
 TYPE_6__* extensions ;
 int memcpy (scalar_t__*,TYPE_2__*,int) ;

VOID
HandleToolbarSave(LPNMTBSAVE lpnmtSave)
{
    if (lpnmtSave->iItem == -1)
    {
        lpnmtSave->cbData = lpnmtSave->cbData + sizeof(TBSAVEHDR) + sizeof(TBSAVEITEM) * lpnmtSave->cButtons;
        lpnmtSave->pCurrent = lpnmtSave->pData = LocalAlloc(LPTR, lpnmtSave->cbData);


        TBSAVEHDR hdr;
        hdr.magic = TBHDR_MAGIC;
        hdr.version = TBHDR_VERSION;
        hdr.cButtons = lpnmtSave->cButtons;
        memcpy(lpnmtSave->pCurrent, &hdr, sizeof(hdr));
        lpnmtSave->pCurrent = (DWORD *)((BYTE *)lpnmtSave->pCurrent + sizeof(hdr));
    }
    else
    {
        TBSAVEITEM item;
        DWORD baseId = 0;
        DWORD baseIbm = 0;


        if (lpnmtSave->tbButton.dwData != 0)
        {
            INT iExt = lpnmtSave->tbButton.dwData - 1;
            baseId = extensions[iExt].Delta;
            baseIbm = extensions[iExt].iStartBmp;
        }

        item.iBitmap = (WORD)(lpnmtSave->tbButton.iBitmap - baseIbm);
        item.idCommand = (WORD)(lpnmtSave->tbButton.idCommand - baseId);
        item.fsState = lpnmtSave->tbButton.fsState;
        item.fsStyle = lpnmtSave->tbButton.fsStyle;
        item.iExtP1 = (WORD)lpnmtSave->tbButton.dwData;

        memcpy(lpnmtSave->pCurrent, &item, sizeof(item));
        lpnmtSave->pCurrent = (DWORD *)((BYTE *)lpnmtSave->pCurrent + sizeof(item));
    }
}
