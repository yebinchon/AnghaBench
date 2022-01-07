
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int file_length ;
typedef int HANDLE ;


 int FileAllocationInfo ;
 int FileEndOfFileInfo ;
 int SetFileInformationByHandle (int ,int ,int *,int) ;

__attribute__((used)) static void __inline preallocate_filesize(HANDLE hFile, int64_t file_length)
{
 SetFileInformationByHandle(hFile, FileEndOfFileInfo, &file_length, sizeof(file_length));


 SetFileInformationByHandle(hFile, FileAllocationInfo, &file_length, sizeof(file_length));
}
