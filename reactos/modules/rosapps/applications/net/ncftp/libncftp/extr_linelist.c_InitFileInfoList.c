
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FileInfoListPtr ;
typedef int FileInfoList ;


 int memset (int ,int ,int) ;

void
InitFileInfoList(FileInfoListPtr list)
{
 (void) memset(list, 0, sizeof(FileInfoList));
}
