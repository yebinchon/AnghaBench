
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_25__ ;
typedef struct TYPE_30__ TYPE_23__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_10__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_39__ {scalar_t__ path; } ;
struct TYPE_30__ {int nSize; int iType; } ;
struct TYPE_31__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_29__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_32__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_33__ {int nChars; int offString; int fOptions; int offDx; TYPE_1__ rcl; TYPE_2__ ptlReference; } ;
struct TYPE_38__ {scalar_t__ iGraphicsMode; double exScale; double eyScale; TYPE_23__ emr; TYPE_25__ rclBounds; TYPE_3__ emrtext; } ;
struct TYPE_37__ {int hdc; } ;
struct TYPE_36__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_35__ {scalar_t__ cx; int cy; } ;
struct TYPE_34__ {scalar_t__ tmDescent; } ;
struct TYPE_28__ {int textAlign; scalar_t__ GraphicsMode; } ;
typedef TYPE_4__ TEXTMETRICW ;
typedef TYPE_5__ SIZE ;
typedef TYPE_6__ RECT ;
typedef TYPE_7__* PHYSDEV ;
typedef scalar_t__ const* LPCWSTR ;
typedef scalar_t__ INT ;
typedef double FLOAT ;
typedef TYPE_8__ EMREXTTEXTOUTW ;
typedef TYPE_9__ EMFDRV_PDEVICE ;
typedef int DWORD ;
typedef TYPE_10__ DC ;
typedef int BOOL ;


 int EMFDRV_UpdateBBox (TYPE_7__*,TYPE_25__*) ;
 int EMFDRV_WriteRecord (TYPE_7__*,TYPE_23__*) ;
 int EMR_EXTTEXTOUTW ;
 scalar_t__ const GM_COMPATIBLE ;
 scalar_t__ GetDeviceCaps (int ,int ) ;
 scalar_t__ GetGraphicsMode (int ) ;
 int GetProcessHeap () ;
 int GetTextAlign (int ) ;
 scalar_t__ GetTextExtentPoint32W (int ,scalar_t__ const*,int,TYPE_5__*) ;
 int GetTextMetricsW (int ,TYPE_4__*) ;
 int GetViewportExtEx (int ,TYPE_5__*) ;
 int GetWindowExtEx (int ,TYPE_5__*) ;
 int HEAP_ZERO_MEMORY ;
 int HORZRES ;
 int HORZSIZE ;
 TYPE_8__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_8__*) ;



 int const TA_LEFT ;

 int const TA_TOP ;
 int TRACE (char*,int ,int ,int,int) ;
 int VERTRES ;
 int VERTSIZE ;
 int debugstr_wn (scalar_t__ const*,int) ;
 TYPE_9__* get_emf_physdev (TYPE_7__*) ;
 TYPE_10__* get_physdev_dc (TYPE_7__*) ;
 int max (int,int) ;
 int memcpy (char*,scalar_t__ const*,int) ;
 int wine_dbgstr_rect (TYPE_6__ const*) ;

BOOL EMFDRV_ExtTextOut( PHYSDEV dev, INT x, INT y, UINT flags, const RECT *lprect,
                        LPCWSTR str, UINT count, const INT *lpDx )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );

    DC *dc = get_physdev_dc( dev );

    EMREXTTEXTOUTW *pemr;
    DWORD nSize;
    BOOL ret;
    int textHeight = 0;
    int textWidth = 0;




    const UINT textAlign = dc->textAlign;
    const INT graphicsMode = dc->GraphicsMode;

    FLOAT exScale, eyScale;

    nSize = sizeof(*pemr) + ((count+1) & ~1) * sizeof(WCHAR) + count * sizeof(INT);

    TRACE("%s %s count %d nSize = %d\n", debugstr_wn(str, count),
           wine_dbgstr_rect(lprect), count, nSize);
    pemr = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, nSize);

    if (graphicsMode == GM_COMPATIBLE)
    {
        const INT horzSize = GetDeviceCaps( dev->hdc, HORZSIZE );
        const INT horzRes = GetDeviceCaps( dev->hdc, HORZRES );
        const INT vertSize = GetDeviceCaps( dev->hdc, VERTSIZE );
        const INT vertRes = GetDeviceCaps( dev->hdc, VERTRES );
        SIZE wndext, vportext;

        GetViewportExtEx( dev->hdc, &vportext );
        GetWindowExtEx( dev->hdc, &wndext );
        exScale = 100.0 * ((FLOAT)horzSize / (FLOAT)horzRes) /
                          ((FLOAT)wndext.cx / (FLOAT)vportext.cx);
        eyScale = 100.0 * ((FLOAT)vertSize / (FLOAT)vertRes) /
                          ((FLOAT)wndext.cy / (FLOAT)vportext.cy);
    }
    else
    {
        exScale = 0.0;
        eyScale = 0.0;
    }

    pemr->emr.iType = EMR_EXTTEXTOUTW;
    pemr->emr.nSize = nSize;
    pemr->iGraphicsMode = graphicsMode;
    pemr->exScale = exScale;
    pemr->eyScale = eyScale;
    pemr->emrtext.ptlReference.x = x;
    pemr->emrtext.ptlReference.y = y;
    pemr->emrtext.nChars = count;
    pemr->emrtext.offString = sizeof(*pemr);
    memcpy((char*)pemr + pemr->emrtext.offString, str, count * sizeof(WCHAR));
    pemr->emrtext.fOptions = flags;
    if(!lprect) {
        pemr->emrtext.rcl.left = pemr->emrtext.rcl.top = 0;
        pemr->emrtext.rcl.right = pemr->emrtext.rcl.bottom = -1;
    } else {
        pemr->emrtext.rcl.left = lprect->left;
        pemr->emrtext.rcl.top = lprect->top;
        pemr->emrtext.rcl.right = lprect->right;
        pemr->emrtext.rcl.bottom = lprect->bottom;
    }

    pemr->emrtext.offDx = pemr->emrtext.offString + ((count+1) & ~1) * sizeof(WCHAR);
    if(lpDx) {
        UINT i;
        SIZE strSize;
        memcpy((char*)pemr + pemr->emrtext.offDx, lpDx, count * sizeof(INT));
        for (i = 0; i < count; i++) {
            textWidth += lpDx[i];
        }
        if (GetTextExtentPoint32W( dev->hdc, str, count, &strSize ))
            textHeight = strSize.cy;
    }
    else {
        UINT i;
        INT *dx = (INT *)((char*)pemr + pemr->emrtext.offDx);
        SIZE charSize;
        for (i = 0; i < count; i++) {
            if (GetTextExtentPoint32W( dev->hdc, str + i, 1, &charSize )) {
                dx[i] = charSize.cx;
                textWidth += charSize.cx;
                textHeight = max(textHeight, charSize.cy);
            }
        }
    }

    if (physDev->path)
    {
        pemr->rclBounds.left = pemr->rclBounds.top = 0;
        pemr->rclBounds.right = pemr->rclBounds.bottom = -1;
        goto no_bounds;
    }


    switch (textAlign & (TA_LEFT | 128 | 129)) {
    case 129: {
        pemr->rclBounds.left = x - (textWidth / 2) - 1;
        pemr->rclBounds.right = x + (textWidth / 2) + 1;
        break;
    }
    case 128: {
        pemr->rclBounds.left = x - textWidth - 1;
        pemr->rclBounds.right = x;
        break;
    }
    default: {
        pemr->rclBounds.left = x;
        pemr->rclBounds.right = x + textWidth + 1;
    }
    }

    switch (textAlign & (TA_TOP | 130 | 131)) {
    case 131: {
        TEXTMETRICW tm;
        if (!GetTextMetricsW( dev->hdc, &tm ))
            tm.tmDescent = 0;


        pemr->rclBounds.top = y - textHeight - 1;
        pemr->rclBounds.bottom = y + tm.tmDescent + 1;
        break;
    }
    case 130: {
        pemr->rclBounds.top = y - textHeight - 1;
        pemr->rclBounds.bottom = y;
        break;
    }
    default: {
        pemr->rclBounds.top = y;
        pemr->rclBounds.bottom = y + textHeight + 1;
    }
    }
    EMFDRV_UpdateBBox( dev, &pemr->rclBounds );

no_bounds:
    ret = EMFDRV_WriteRecord( dev, &pemr->emr );
    HeapFree( GetProcessHeap(), 0, pemr );
    return ret;
}
