
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LineListPtr ;
typedef int FileInfoListPtr ;
typedef int FTPCIPtr ;


 int FTPLocalRecursiveFileList2 (int ,int ,int ,int ) ;

int
FTPLocalRecursiveFileList(FTPCIPtr cip, LineListPtr fileList, FileInfoListPtr files)
{
 return (FTPLocalRecursiveFileList2(cip, fileList, files, 0));
}
