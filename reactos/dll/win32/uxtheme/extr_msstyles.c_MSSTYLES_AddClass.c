
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * overrides; int * partstate; struct TYPE_9__* next; int szClassName; int szAppName; int hTheme; } ;
struct TYPE_8__ {TYPE_2__* classes; int hTheme; } ;
typedef int THEME_CLASS ;
typedef TYPE_1__* PTHEME_FILE ;
typedef TYPE_2__* PTHEME_CLASS ;
typedef int LPCWSTR ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 TYPE_2__* MSSTYLES_FindClass (TYPE_1__*,int ,int ) ;
 int lstrcpyW (int ,int ) ;

__attribute__((used)) static PTHEME_CLASS MSSTYLES_AddClass(PTHEME_FILE tf, LPCWSTR pszAppName, LPCWSTR pszClassName)
{
    PTHEME_CLASS cur = MSSTYLES_FindClass(tf, pszAppName, pszClassName);
    if(cur) return cur;

    cur = HeapAlloc(GetProcessHeap(), 0, sizeof(THEME_CLASS));
    cur->hTheme = tf->hTheme;
    lstrcpyW(cur->szAppName, pszAppName);
    lstrcpyW(cur->szClassName, pszClassName);
    cur->next = tf->classes;
    cur->partstate = ((void*)0);
    cur->overrides = ((void*)0);
    tf->classes = cur;
    return cur;
}
