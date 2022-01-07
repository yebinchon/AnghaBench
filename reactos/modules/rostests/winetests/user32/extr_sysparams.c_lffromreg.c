
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lfw ;
struct TYPE_7__ {int lfFaceName; int lfPitchAndFamily; int lfQuality; int lfClipPrecision; int lfOutPrecision; int lfCharSet; int lfStrikeOut; int lfUnderline; int lfItalic; int lfWeight; int lfOrientation; int lfEscapement; int lfWidth; int lfHeight; } ;
struct TYPE_6__ {int lfFaceName; int lfPitchAndFamily; int lfQuality; int lfClipPrecision; int lfOutPrecision; int lfCharSet; int lfStrikeOut; int lfUnderline; int lfItalic; int lfWeight; int lfOrientation; int lfEscapement; int lfWidth; int lfHeight; } ;
struct TYPE_5__ {int lfFaceName; int lfPitchAndFamily; int lfQuality; int lfClipPrecision; int lfOutPrecision; int lfCharSet; int lfStrikeOut; int lfUnderline; int lfItalic; int lfWeight; int lfOrientation; int lfEscapement; int lfWidth; int lfHeight; } ;
typedef int LPBYTE ;
typedef TYPE_1__ LOGFONTW ;
typedef TYPE_2__ LOGFONTA ;
typedef TYPE_3__ LOGFONT16 ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int CP_ACP ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int LF_FACESIZE ;
 int RegCloseKey (int ) ;
 int RegOpenKeyA (int ,char const*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char const*,int *,scalar_t__*,int ,scalar_t__*) ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,int ,int,int ,int ,int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int ok (int,char*,char const*,char const*) ;

__attribute__((used)) static int lffromreg( const char *keyname, const char *valname, LOGFONTA *plf)
{
    HKEY hkey;
    LOGFONTW lfw;
    DWORD ret, size, type;

    RegOpenKeyA( HKEY_CURRENT_USER, keyname, &hkey );
    size = sizeof( lfw);
    ret=RegQueryValueExA( hkey, valname, ((void*)0), &type, (LPBYTE)&lfw, &size );
    RegCloseKey( hkey );
    ok( ret == ERROR_SUCCESS, "Key \"%s\" value \"%s\" not found\n", keyname, valname);
    if( ret != ERROR_SUCCESS)
        return FALSE;
    if( size <= sizeof( LOGFONT16)) {
        LOGFONT16 *plf16 = (LOGFONT16*) &lfw;
        plf->lfHeight = plf16->lfHeight;
        plf->lfWidth = plf16->lfWidth;
        plf->lfEscapement = plf16->lfEscapement;
        plf->lfOrientation = plf16->lfOrientation;
        plf->lfWeight = plf16->lfWeight;
        plf->lfItalic = plf16->lfItalic;
        plf->lfUnderline = plf16->lfUnderline;
        plf->lfStrikeOut = plf16->lfStrikeOut;
        plf->lfCharSet = plf16->lfCharSet;
        plf->lfOutPrecision = plf16->lfOutPrecision;
        plf->lfClipPrecision = plf16->lfClipPrecision;
        plf->lfQuality = plf16->lfQuality;
        plf->lfPitchAndFamily = plf16->lfPitchAndFamily;
        memcpy( plf->lfFaceName, plf16->lfFaceName, LF_FACESIZE );
    } else if( size <= sizeof( LOGFONTA)) {
        plf = (LOGFONTA*) &lfw;
    } else {
        plf->lfHeight = lfw.lfHeight;
        plf->lfWidth = lfw.lfWidth;
        plf->lfEscapement = lfw.lfEscapement;
        plf->lfOrientation = lfw.lfOrientation;
        plf->lfWeight = lfw.lfWeight;
        plf->lfItalic = lfw.lfItalic;
        plf->lfUnderline = lfw.lfUnderline;
        plf->lfStrikeOut = lfw.lfStrikeOut;
        plf->lfCharSet = lfw.lfCharSet;
        plf->lfOutPrecision = lfw.lfOutPrecision;
        plf->lfClipPrecision = lfw.lfClipPrecision;
        plf->lfQuality = lfw.lfQuality;
        plf->lfPitchAndFamily = lfw.lfPitchAndFamily;
        WideCharToMultiByte( CP_ACP, 0, lfw.lfFaceName, -1, plf->lfFaceName,
            LF_FACESIZE, ((void*)0), ((void*)0));

    }
    return TRUE;
}
