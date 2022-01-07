
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int HGDIOBJ ;
typedef int HFONT ;
typedef int HDC ;
typedef int BOOL ;


 int CLIP_DEFAULT_PRECIS ;
 int CreateFontA (int ,int ,int ,int ,int ,int,int,int,int ,int ,int ,int ,int ,char const*) ;
 int DEFAULT_CHARSET ;
 int DEFAULT_PITCH ;
 int DEFAULT_QUALITY ;
 int DeleteObject (int ) ;
 int FALSE ;
 int FW_DONTCARE ;
 int GetLastError () ;
 int GetTextFaceA (int ,int,char*) ;
 int OUT_DEFAULT_PRECIS ;
 int SelectObject (int ,int ) ;
 int SetLastError (int) ;
 int _strcmpi (char*,char const*) ;
 int ok (int,char*,int ,char const*) ;

__attribute__((used)) static BOOL is_font_available(HDC hdc, const char* fontName)
{
    char name[64];
    BOOL ret;

    HFONT font = CreateFontA(0, 0, 0, 0, FW_DONTCARE, FALSE, FALSE, FALSE, DEFAULT_CHARSET,
                            OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, DEFAULT_PITCH, fontName);
    HGDIOBJ old = SelectObject(hdc, font);


    SetLastError(0xdeadbeef);

    ret = GetTextFaceA(hdc, sizeof(name), name);
    ok(ret, "GetTextFaceA error %lu for %s\n", GetLastError(), fontName);
    SelectObject(hdc, old);
    DeleteObject(font);

    if (ret)
    {
        return !_strcmpi(name, fontName);
    }
    return FALSE;
}
