
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* StatInfoList; } ;
struct TYPE_7__ {struct TYPE_7__* Next; struct TYPE_7__* StatInfoListNext; TYPE_2__* ExtInfo; int FileName; } ;
typedef TYPE_1__* PFILE_INFO ;
typedef TYPE_2__* PEXTENSION_INFO ;
typedef int LPTSTR ;
typedef int FILE_INFO ;


 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 TYPE_1__* StatInfoList ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _tcscpy (int ,int ) ;

PFILE_INFO
AddFile(LPTSTR FileName,
  PEXTENSION_INFO ExtInfo)
{
  PFILE_INFO StatInfo;
  PFILE_INFO Info;

  StatInfo = (PFILE_INFO) HeapAlloc (GetProcessHeap(), 0, sizeof (FILE_INFO));
  if (!StatInfo)
    return ((void*)0);
  ZeroMemory (StatInfo, sizeof (FILE_INFO));
  _tcscpy (StatInfo->FileName, FileName);
  StatInfo->ExtInfo = ExtInfo;

  if (ExtInfo->StatInfoList)
  {
    Info = ExtInfo->StatInfoList;
    while (Info->StatInfoListNext != ((void*)0))
    {
      Info = Info->StatInfoListNext;
    }
    Info->StatInfoListNext = StatInfo;
  }
  else
  {
    ExtInfo->StatInfoList = StatInfo;
  }

  if (StatInfoList)
  {
    Info = StatInfoList;
    while (Info->Next != ((void*)0))
    {
      Info = Info->Next;
    }
    Info->Next = StatInfo;
  }
  else
  {
    StatInfoList = StatInfo;
  }

  return StatInfo;
}
