
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int FreeLibrary (int ) ;

int _unloaddll(intptr_t handle)
{
 return FreeLibrary((HMODULE) handle);
}
