
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
typedef TYPE_1__ CFileOutStream ;


 int File_Write (int *,void const*,size_t*) ;

__attribute__((used)) static size_t FileOutStream_Write(void *pp, const void *data, size_t size)
{
  CFileOutStream *p = (CFileOutStream *)pp;
  File_Write(&p->file, data, &size);
  return size;
}
