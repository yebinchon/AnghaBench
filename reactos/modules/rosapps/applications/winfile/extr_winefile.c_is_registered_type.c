
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int HKEY_CLASSES_ROOT ;
 int RegQueryValueW (int ,int ,int *,int *) ;
 int TRUE ;

__attribute__((used)) static BOOL is_registered_type(LPCWSTR ext)
{

 if (!RegQueryValueW(HKEY_CLASSES_ROOT, ext, ((void*)0), ((void*)0)))
  return TRUE;

 return FALSE;
}
