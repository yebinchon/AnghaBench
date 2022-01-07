
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EDITSTATE ;


 int EDIT_WM_Clear (int *) ;
 int EDIT_WM_Copy (int *) ;

__attribute__((used)) static inline void EDIT_WM_Cut(EDITSTATE *es)
{
 EDIT_WM_Copy(es);
 EDIT_WM_Clear(es);
}
