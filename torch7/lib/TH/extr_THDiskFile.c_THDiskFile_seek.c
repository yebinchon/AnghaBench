
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
typedef int __int64 ;
struct TYPE_3__ {int hasError; int isQuiet; } ;
struct TYPE_4__ {TYPE_1__ file; int * handle; } ;
typedef int THFile ;
typedef TYPE_2__ THDiskFile ;


 scalar_t__ INT64_MAX ;
 scalar_t__ LLONG_MAX ;
 scalar_t__ LONG_MAX ;
 int SEEK_SET ;
 int THArgCheck (int,int,char*) ;
 int THError (char*,size_t) ;
 scalar_t__ _fseeki64 (int *,int ,int ) ;
 scalar_t__ fseek (int *,long,int ) ;
 scalar_t__ fseeko (int *,int ,int ) ;

__attribute__((used)) static void THDiskFile_seek(THFile *self, size_t position)
{
  THDiskFile *dfself = (THDiskFile*)(self);

  THArgCheck(dfself->handle != ((void*)0), 1, "attempt to use a closed file");
  THArgCheck(position <= (size_t)LLONG_MAX, 2, "position must be smaller than LLONG_MAX");
  if(fseeko(dfself->handle, (off_t)position, SEEK_SET) < 0)

  {
    dfself->file.hasError = 1;
    if(!dfself->file.isQuiet)
      THError("unable to seek to position %zu", position);
  }
}
