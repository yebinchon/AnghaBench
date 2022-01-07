
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SizeOfStruct; scalar_t__ ModBase; scalar_t__ Address; scalar_t__ MaxNameLen; } ;
typedef int SYMBOL_INFO ;
typedef int PVOID ;
typedef TYPE_1__* PSYMBOL_INFO ;
typedef int PIMAGE_NT_HEADERS ;
typedef char* PCSTR ;
typedef int PBYTE ;
typedef int HANDLE ;


 int GetLastError () ;
 int ImageNtHeader (int ) ;
 int ImageRvaToVa (int ,int ,scalar_t__,int *) ;
 scalar_t__ MAX_SYMBOL_NAME ;
 int SymFromName (int ,char*,TYPE_1__*) ;
 int printf (char*,char*,...) ;

PVOID
ImageSymToVa(HANDLE hProcess, PSYMBOL_INFO pSym, PBYTE pModule, PCSTR Name)
{
 PIMAGE_NT_HEADERS NtHeaders;
 PVOID p;

 pSym->SizeOfStruct = sizeof(SYMBOL_INFO);
 pSym->MaxNameLen = MAX_SYMBOL_NAME-1;

 if (!SymFromName(hProcess, Name, pSym))
 {
  printf("SymGetSymFromName64() failed: %ld\n", GetLastError());
  return 0;
 }


 printf("looking up adress for %s: 0x%llx\n", Name, pSym->Address);




 NtHeaders = ImageNtHeader(pModule);
 p = ImageRvaToVa(NtHeaders, pModule, pSym->Address - pSym->ModBase, ((void*)0));

 return p;
}
