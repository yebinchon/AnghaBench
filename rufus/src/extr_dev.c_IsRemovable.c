
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;




 int FALSE ;
 int TRUE ;

__attribute__((used)) static __inline BOOL IsRemovable(const char* buffer)
{
 switch (*((DWORD*)buffer)) {
 case 128:
 case 129:
  return TRUE;
 default:
  return FALSE;
 }
}
