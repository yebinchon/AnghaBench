
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {int ciACP; } ;
struct TYPE_12__ {int hdc; } ;
struct TYPE_11__ {int bottom; int right; int top; int left; } ;
struct TYPE_10__ {int bottom; int right; int top; int left; } ;
typedef TYPE_1__ RECT16 ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PHYSDEV ;
typedef scalar_t__* LPSTR ;
typedef scalar_t__* LPINT16 ;
typedef int LPCWSTR ;
typedef int INT16 ;
typedef scalar_t__ INT ;
typedef int DWORD ;
typedef TYPE_4__ CHARSETINFO ;
typedef int BOOL ;



 int CP_ACP ;

 int FIXME (char*,int) ;
 int GetACP () ;
 int GetOEMCP () ;
 int GetProcessHeap () ;
 int GetTextCharset (int ) ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;



 scalar_t__ IsDBCSLeadByteEx (int ,scalar_t__) ;

 int MFDRV_MetaExtTextOut (TYPE_3__*,scalar_t__,scalar_t__,int ,TYPE_1__*,scalar_t__*,int,scalar_t__*) ;

 int TCI_SRCCHARSET ;

 int TRACE (char*,int ,...) ;
 scalar_t__ TranslateCharsetInfo (int ,TYPE_4__*,int ) ;
 int ULongToPtr (int) ;

 int WideCharToMultiByte (int ,int ,int ,int ,scalar_t__*,int,int *,int *) ;
 int debugstr_an (scalar_t__*,int) ;
 int debugstr_wn (int ,int ) ;

BOOL MFDRV_ExtTextOut( PHYSDEV dev, INT x, INT y, UINT flags,
                       const RECT *lprect, LPCWSTR str, UINT count, const INT *lpDx )
{
    RECT16 rect16;
    LPINT16 lpdx16 = ((void*)0);
    BOOL ret;
    unsigned int i, j;
    LPSTR ascii;
    DWORD len;
    CHARSETINFO csi;
    int charset = GetTextCharset( dev->hdc );
    UINT cp = CP_ACP;

    if(TranslateCharsetInfo(ULongToPtr(charset), &csi, TCI_SRCCHARSET))
        cp = csi.ciACP;
    else {
        switch(charset) {
 case 130:
     cp = GetOEMCP();
     break;
 case 135:
     cp = GetACP();
     break;

 case 128:
 case 129:
 case 131:
 case 133:
 case 132:
 case 134:
 case 136:







     cp = CP_ACP;
     break;


 default:
     FIXME("Can't find codepage for charset %d\n", charset);
     break;
 }
    }


    TRACE("cp == %d\n", cp);
    len = WideCharToMultiByte(cp, 0, str, count, ((void*)0), 0, ((void*)0), ((void*)0));
    ascii = HeapAlloc(GetProcessHeap(), 0, len);
    WideCharToMultiByte(cp, 0, str, count, ascii, len, ((void*)0), ((void*)0));
    TRACE("mapped %s -> %s\n", debugstr_wn(str, count), debugstr_an(ascii, len));


    if (lprect)
    {
        rect16.left = lprect->left;
        rect16.top = lprect->top;
        rect16.right = lprect->right;
        rect16.bottom = lprect->bottom;
    }

    if(lpDx) {
        lpdx16 = HeapAlloc( GetProcessHeap(), 0, sizeof(INT16)*len );
 for(i = j = 0; i < len; )
     if(IsDBCSLeadByteEx(cp, ascii[i])) {
         lpdx16[i++] = lpDx[j++];
  lpdx16[i++] = 0;
     } else
         lpdx16[i++] = lpDx[j++];
    }

    ret = MFDRV_MetaExtTextOut(dev,x,y,flags,lprect?&rect16:((void*)0),ascii,len,lpdx16);
    HeapFree( GetProcessHeap(), 0, ascii );
    HeapFree( GetProcessHeap(), 0, lpdx16 );
    return ret;
}
