
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CreateFileA (char*,int,int ,int *,int ,int,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int OPEN_EXISTING ;

HANDLE open_file(char* filename, BOOL bWrite)
{
    DWORD dwAccess = GENERIC_READ | (bWrite ? GENERIC_WRITE : 0);
    DWORD dwAttr = (bWrite ? FILE_ATTRIBUTE_NORMAL : FILE_ATTRIBUTE_READONLY);
    return CreateFileA(filename, dwAccess, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING,
                       dwAttr, ((void*)0));
}
