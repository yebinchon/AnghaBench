
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char type; int mdtm; int size; } ;
typedef TYPE_1__* FileInfoPtr ;
typedef int FileInfo ;


 int kModTimeUnknown ;
 int kSizeUnknown ;
 int memset (TYPE_1__*,int ,int) ;

void
InitFileInfo(FileInfoPtr fip)
{
 (void) memset(fip, 0, sizeof(FileInfo));
 fip->type = '-';
 fip->size = kSizeUnknown;
 fip->mdtm = kModTimeUnknown;
}
