
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lname; int * rname; int relname; } ;
typedef int FileInfoListPtr ;
typedef TYPE_1__ FileInfo ;


 int * AddFileInfo (int ,TYPE_1__*) ;
 int InitFileInfo (TYPE_1__*) ;
 int StrDup (char*) ;

int
ConcatFileToFileInfoList(FileInfoListPtr dst, char *rfile)
{
 FileInfo newfi;

 InitFileInfo(&newfi);
 newfi.relname = StrDup(rfile);
 newfi.rname = ((void*)0);
 newfi.lname = ((void*)0);

 if (AddFileInfo(dst, &newfi) == ((void*)0))
  return (-1);
 return (0);
}
