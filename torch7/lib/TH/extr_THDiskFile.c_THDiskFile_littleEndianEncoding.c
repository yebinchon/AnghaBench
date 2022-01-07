
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isNativeEncoding; int * handle; } ;
typedef int THFile ;
typedef TYPE_1__ THDiskFile ;


 int THArgCheck (int ,int,char*) ;
 int THDiskFile_isLittleEndianCPU () ;

void THDiskFile_littleEndianEncoding(THFile *self)
{
  THDiskFile *dfself = (THDiskFile*)(self);
  THArgCheck(dfself->handle != ((void*)0), 1, "attempt to use a closed file");
  dfself->isNativeEncoding = THDiskFile_isLittleEndianCPU();
}
