#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szFile ;
typedef  char WCHAR ;
struct TYPE_9__ {TYPE_1__* tf; int /*<<< orphan*/  hTheme; } ;
struct TYPE_8__ {int /*<<< orphan*/  image; int /*<<< orphan*/  name; struct TYPE_8__* next; int /*<<< orphan*/  hasAlpha; } ;
struct TYPE_7__ {TYPE_2__* images; } ;
typedef  int /*<<< orphan*/  THEME_IMAGE ;
typedef  TYPE_2__* PTHEME_IMAGE ;
typedef  TYPE_3__* PTHEME_CLASS ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int /*<<< orphan*/  LR_CREATEDIBSECTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HBITMAP FUNC9 (PTHEME_CLASS tc, LPCWSTR lpFilename, BOOL* hasAlpha)
{
    WCHAR szFile[MAX_PATH];
    LPWSTR tmp;
    PTHEME_IMAGE img;
    FUNC7(szFile, lpFilename, sizeof(szFile)/sizeof(szFile[0]));
    tmp = szFile;
    do {
        if(*tmp == '\\') *tmp = '_';
        if(*tmp == '/') *tmp = '_';
        if(*tmp == '.') *tmp = '_';
    } while(*tmp++);

    /* Try to locate in list of loaded images */
    img = tc->tf->images;
    while (img)
    {
        if (FUNC5 (szFile, img->name) == 0)
        {
            FUNC3 ("found %p %s: %p\n", img, FUNC4 (img->name), img->image);
            *hasAlpha = img->hasAlpha;
            return img->image;
        }
        img = img->next;
    }
    /* Not found? Load from resources */
    img = FUNC1 (FUNC0(), 0, sizeof (THEME_IMAGE));
    img->image = FUNC2(tc->hTheme, szFile, IMAGE_BITMAP, 0, 0, LR_CREATEDIBSECTION);
    FUNC8 (img->image, hasAlpha);
    img->hasAlpha = *hasAlpha;
    /* ...and stow away for later reuse. */
    FUNC6 (img->name, szFile);
    img->next = tc->tf->images;
    tc->tf->images = img;
    FUNC3 ("new %p %s: %p\n", img, FUNC4 (img->name), img->image);
    return img->image;
}