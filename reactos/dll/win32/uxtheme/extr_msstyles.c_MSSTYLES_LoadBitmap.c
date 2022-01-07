
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int szFile ;
typedef char WCHAR ;
struct TYPE_9__ {TYPE_1__* tf; int hTheme; } ;
struct TYPE_8__ {int image; int name; struct TYPE_8__* next; int hasAlpha; } ;
struct TYPE_7__ {TYPE_2__* images; } ;
typedef int THEME_IMAGE ;
typedef TYPE_2__* PTHEME_IMAGE ;
typedef TYPE_3__* PTHEME_CLASS ;
typedef char* LPWSTR ;
typedef int LPCWSTR ;
typedef int HBITMAP ;
typedef int BOOL ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IMAGE_BITMAP ;
 int LR_CREATEDIBSECTION ;
 int LoadImageW (int ,char*,int ,int ,int ,int ) ;
 int MAX_PATH ;
 int TRACE (char*,TYPE_2__*,int ,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ lstrcmpiW (char*,int ) ;
 int lstrcpyW (int ,char*) ;
 int lstrcpynW (char*,int ,int) ;
 int prepare_alpha (int ,int *) ;

HBITMAP MSSTYLES_LoadBitmap (PTHEME_CLASS tc, LPCWSTR lpFilename, BOOL* hasAlpha)
{
    WCHAR szFile[MAX_PATH];
    LPWSTR tmp;
    PTHEME_IMAGE img;
    lstrcpynW(szFile, lpFilename, sizeof(szFile)/sizeof(szFile[0]));
    tmp = szFile;
    do {
        if(*tmp == '\\') *tmp = '_';
        if(*tmp == '/') *tmp = '_';
        if(*tmp == '.') *tmp = '_';
    } while(*tmp++);


    img = tc->tf->images;
    while (img)
    {
        if (lstrcmpiW (szFile, img->name) == 0)
        {
            TRACE ("found %p %s: %p\n", img, debugstr_w (img->name), img->image);
            *hasAlpha = img->hasAlpha;
            return img->image;
        }
        img = img->next;
    }

    img = HeapAlloc (GetProcessHeap(), 0, sizeof (THEME_IMAGE));
    img->image = LoadImageW(tc->hTheme, szFile, IMAGE_BITMAP, 0, 0, LR_CREATEDIBSECTION);
    prepare_alpha (img->image, hasAlpha);
    img->hasAlpha = *hasAlpha;

    lstrcpyW (img->name, szFile);
    img->next = tc->tf->images;
    tc->tf->images = img;
    TRACE ("new %p %s: %p\n", img, debugstr_w (img->name), img->image);
    return img->image;
}
