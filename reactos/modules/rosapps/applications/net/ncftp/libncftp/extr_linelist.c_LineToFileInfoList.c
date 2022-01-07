
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line; } ;
typedef TYPE_1__* LinePtr ;
typedef int FileInfoListPtr ;


 scalar_t__ ConcatFileToFileInfoList (int ,int ) ;
 int InitFileInfoList (int ) ;

int
LineToFileInfoList(LinePtr lp, FileInfoListPtr dst)
{
 InitFileInfoList(dst);
 if (ConcatFileToFileInfoList(dst, lp->line) < 0)
  return (-1);
 return (0);
}
