
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text; } ;
typedef int LPWSTR ;
typedef scalar_t__* LPSTR ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,scalar_t__*,int,int *,int *) ;
 int lstrcpynW (int ,int ,int) ;
 int strlen (scalar_t__*) ;
 int strlenW (int ) ;

__attribute__((used)) static INT EDIT_WM_GetText(const EDITSTATE *es, INT count, LPWSTR dst, BOOL unicode)
{
    if(!count) return 0;

    if(unicode)
    {
 lstrcpynW(dst, es->text, count);
 return strlenW(dst);
    }
    else
    {
 LPSTR textA = (LPSTR)dst;
 if (!WideCharToMultiByte(CP_ACP, 0, es->text, -1, textA, count, ((void*)0), ((void*)0)))
            textA[count - 1] = 0;
 return strlen(textA);
    }
}
