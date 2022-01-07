
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KERNEL_VERSION_BUILD_STR ;
 int KERNEL_VERSION_STR ;
 int wprintf (char*,int ,int ) ;

__attribute__((used)) static void
PrintAppVersion(void)
{
  wprintf(L"RosPerf %S (Build %S)\n", KERNEL_VERSION_STR, KERNEL_VERSION_BUILD_STR);
}
