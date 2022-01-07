
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int EDITSTATE ;


 int EDIT_WM_HScroll (int *,int ,int ) ;
 int EDIT_WM_VScroll (int *,int ,int ) ;
 int EM_GETTHUMB ;
 int MAKELONG (int ,int ) ;

__attribute__((used)) static LRESULT EDIT_EM_GetThumb(EDITSTATE *es)
{
 return MAKELONG(EDIT_WM_VScroll(es, EM_GETTHUMB, 0),
                        EDIT_WM_HScroll(es, EM_GETTHUMB, 0));
}
