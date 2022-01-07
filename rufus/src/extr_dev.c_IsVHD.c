
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int ARRAYSIZE (char const**) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ enable_vmdk ;
 int * safe_strstr (char const*,char const*) ;

__attribute__((used)) static __inline BOOL IsVHD(const char* buffer)
{
 int i;

 const char* vhd_name[] = {
  "Arsenal_________Virtual_",
  "KernSafeVirtual_________",
  "Msft____Virtual_Disk____",
  "VMware__VMware_Virtual_S"
 };

 for (i = 0; i < (int)(ARRAYSIZE(vhd_name)-(enable_vmdk?0:1)); i++)
  if (safe_strstr(buffer, vhd_name[i]) != ((void*)0))
   return TRUE;
 return FALSE;
}
