
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HKEY ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyExA (int *,char const*,int ,int ,int **) ;

__attribute__((used)) static __inline BOOL IsRegistryNode(HKEY key_root, const char* key_name)
{
 BOOL r;
 HKEY hSoftware = ((void*)0);
 r = (RegOpenKeyExA(key_root, key_name, 0, KEY_READ, &hSoftware) == ERROR_SUCCESS);
 if (hSoftware != ((void*)0))
  RegCloseKey(hSoftware);
 return r;
}
