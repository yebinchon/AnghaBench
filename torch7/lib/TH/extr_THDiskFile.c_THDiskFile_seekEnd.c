
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hasError; int isQuiet; } ;
struct TYPE_4__ {TYPE_1__ file; int * handle; } ;
typedef int THFile ;
typedef TYPE_2__ THDiskFile ;


 int SEEK_END ;
 int THArgCheck (int ,int,char*) ;
 int THError (char*) ;
 scalar_t__ _fseeki64 (int *,int ,int ) ;
 scalar_t__ fseek (int *,int ,int ) ;
 scalar_t__ fseeko (int *,int ,int ) ;

__attribute__((used)) static void THDiskFile_seekEnd(THFile *self)
{
  THDiskFile *dfself = (THDiskFile*)(self);

  THArgCheck(dfself->handle != ((void*)0), 1, "attempt to use a closed file");






  if(fseeko(dfself->handle, 0, SEEK_END) < 0)

  {
    dfself->file.hasError = 1;
    if(!dfself->file.isQuiet)
      THError("unable to seek at end of file");
  }
}
