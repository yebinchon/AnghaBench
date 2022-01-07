
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int bottom; int right; } ;
struct TYPE_11__ {scalar_t__ GreenVal; scalar_t__ BlueVal; scalar_t__ RedVal; void* hPreviewBitmap; TYPE_6__ ImageRect; TYPE_2__* Info; void* hBitmap; int hPicPrev; } ;
struct TYPE_10__ {TYPE_1__* ImageEditors; } ;
struct TYPE_9__ {int hBitmap; } ;
typedef TYPE_2__* PMAIN_WND_INFO ;
typedef TYPE_3__* PIMAGEADJUST ;
typedef scalar_t__ LPARAM ;
typedef TYPE_3__ IMAGEADJUST ;
typedef int HWND ;
typedef void* HBITMAP ;


 scalar_t__ BASECOLOUR ;
 int BM_SETCHECK ;
 int BST_CHECKED ;
 scalar_t__ CopyImage (int ,int ,int ,int ,int ) ;
 int GetClientRect (int ,TYPE_6__*) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int IDC_BRI_EDIT ;
 int IDC_BRI_FULL ;
 int IDC_BRI_TRACKBAR ;
 int IDC_PICPREVIEW ;
 int IMAGE_BITMAP ;
 int LR_CREATEDIBSECTION ;
 scalar_t__ MAKELONG (int ,int) ;
 int ProcessHeap ;
 int SendDlgItemMessage (int ,int ,int ,int ,scalar_t__) ;
 int SetDlgItemText (int ,int ,int ) ;
 int TBM_SETPOS ;
 int TBM_SETRANGE ;
 int TRUE ;
 int _T (char*) ;

__attribute__((used)) static PIMAGEADJUST
Bri_OnInitDialog(PIMAGEADJUST pImgAdj,
             HWND hDlg,
             LPARAM lParam)
{
    pImgAdj = (IMAGEADJUST*) HeapAlloc(ProcessHeap,
                        0,
                        sizeof(IMAGEADJUST));
    if (!pImgAdj)
        return ((void*)0);


    pImgAdj->Info = (PMAIN_WND_INFO)lParam;
    if (!pImgAdj->Info->ImageEditors)
        goto fail;


    pImgAdj->hPicPrev = GetDlgItem(hDlg, IDC_PICPREVIEW);
    GetClientRect(pImgAdj->hPicPrev,
                  &pImgAdj->ImageRect);


    pImgAdj->hBitmap = (HBITMAP) CopyImage(pImgAdj->Info->ImageEditors->hBitmap,
                                 IMAGE_BITMAP,
                                 pImgAdj->ImageRect.right,
                                 pImgAdj->ImageRect.bottom,
                                 LR_CREATEDIBSECTION);
    if (!pImgAdj->hBitmap)
        goto fail;


    pImgAdj->hPreviewBitmap = (HBITMAP) CopyImage(pImgAdj->Info->ImageEditors->hBitmap,
                                        IMAGE_BITMAP,
                                        pImgAdj->ImageRect.right,
                                        pImgAdj->ImageRect.bottom,
                                        LR_CREATEDIBSECTION);
    if (!pImgAdj->hPreviewBitmap)
        goto fail;


    pImgAdj->RedVal = pImgAdj->BlueVal = pImgAdj->GreenVal = 0;


    SendDlgItemMessage(hDlg,
                       IDC_BRI_FULL,
                       BM_SETCHECK,
                       BST_CHECKED,
                       0);
    SendDlgItemMessage(hDlg,
                       IDC_BRI_TRACKBAR,
                       TBM_SETRANGE,
                       TRUE,
                       (LPARAM)MAKELONG(0, 200));
    SendDlgItemMessage(hDlg,
                       IDC_BRI_TRACKBAR,
                       TBM_SETPOS,
                       TRUE,
                       (LPARAM)BASECOLOUR);
    SetDlgItemText(hDlg,
                   IDC_BRI_EDIT,
                   _T("100"));

    return pImgAdj;

fail:
    HeapFree(ProcessHeap,
             0,
             pImgAdj);
    return ((void*)0);
}
