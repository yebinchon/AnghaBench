
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef scalar_t__ DWORD ;


 int FALSE ;
 int * GetResource (int ,char*,char*,char const*,scalar_t__*,int ) ;

DWORD GetResourceSize(HMODULE module, char* name, char* type, const char* desc)
{
 DWORD len = 0;
 return (GetResource(module, name, type, desc, &len, FALSE) == ((void*)0))?0:len;
}
