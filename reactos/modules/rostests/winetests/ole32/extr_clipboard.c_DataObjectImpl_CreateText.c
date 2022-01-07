
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDATAOBJECT ;
typedef int LPCSTR ;
typedef int HRESULT ;
typedef int HGLOBAL ;


 int DataObjectImpl_CreateFromHGlobal (int ,int *) ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int ,scalar_t__) ;
 int GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static HRESULT DataObjectImpl_CreateText(LPCSTR text, LPDATAOBJECT *lplpdataobj)
{
    HGLOBAL h = GlobalAlloc(GMEM_MOVEABLE, strlen(text) + 1);
    strcpy(GlobalLock(h), text);
    GlobalUnlock(h);
    return DataObjectImpl_CreateFromHGlobal(h, lplpdataobj);
}
