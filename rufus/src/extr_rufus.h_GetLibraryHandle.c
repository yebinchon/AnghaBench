
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HMODULE ;


 int * GetModuleHandleA (char*) ;
 int * LoadLibraryA (char*) ;
 scalar_t__ MAX_LIBRARY_HANDLES ;
 int ** OpenedLibrariesHandle ;
 scalar_t__ OpenedLibrariesHandleSize ;
 int uprintf (char*) ;

__attribute__((used)) static __inline HMODULE GetLibraryHandle(char* szLibraryName) {
 HMODULE h = ((void*)0);
 if ((h = GetModuleHandleA(szLibraryName)) == ((void*)0)) {
  if (OpenedLibrariesHandleSize >= MAX_LIBRARY_HANDLES) {
   uprintf("Error: MAX_LIBRARY_HANDLES is too small\n");
  } else {
   h = LoadLibraryA(szLibraryName);
   if (h != ((void*)0))
    OpenedLibrariesHandle[OpenedLibrariesHandleSize++] = h;
  }
 }
 return h;
}
