
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHANDLE ;
typedef int HANDLE ;
typedef int BOOL ;


 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,int ,int ,int ,int ,int ,int ) ;
 int GetCurrentProcess () ;

__attribute__((used)) static BOOL MyDuplicateHandle(HANDLE hFile, PHANDLE phFile, BOOL bInherit)
{
    HANDLE hProcess = GetCurrentProcess();
    return DuplicateHandle(hProcess, hFile, hProcess, phFile, 0,
                           bInherit, DUPLICATE_SAME_ACCESS);
}
