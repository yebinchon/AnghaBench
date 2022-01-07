
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
typedef int SRes ;
typedef int Int64 ;
typedef int ESzSeek ;
typedef TYPE_1__ CFileInStream ;


 int File_Seek (int *,int *,int ) ;

__attribute__((used)) static SRes FileInStream_Seek(void *pp, Int64 *pos, ESzSeek origin)
{
  CFileInStream *p = (CFileInStream *)pp;
  return File_Seek(&p->file, pos, origin);
}
