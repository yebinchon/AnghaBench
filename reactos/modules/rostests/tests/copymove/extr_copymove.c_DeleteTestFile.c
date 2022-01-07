
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;


 int DeleteFile (int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int SetFileAttributes (int ,int ) ;

__attribute__((used)) static void
DeleteTestFile(LPCTSTR filename)
{
 SetFileAttributes(filename, FILE_ATTRIBUTE_NORMAL);
 DeleteFile(filename);
}
