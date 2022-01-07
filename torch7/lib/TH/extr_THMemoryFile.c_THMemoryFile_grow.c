
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; char* data; } ;
struct TYPE_4__ {size_t size; TYPE_3__* storage; } ;
typedef TYPE_1__ THMemoryFile ;


 int THCharStorage_resize (TYPE_3__*,int) ;

__attribute__((used)) static void THMemoryFile_grow(THMemoryFile *self, size_t size)
{
  size_t missingSpace;

  if(size <= self->size)
    return;
  else
  {
    if(size < self->storage->size)
    {
      self->size = size;
      self->storage->data[self->size] = '\0';
      return;
    }
  }

  missingSpace = size-self->storage->size+1;
  THCharStorage_resize(self->storage, (self->storage->size/2 > missingSpace ?
                                       self->storage->size + (self->storage->size/2)
                                       : self->storage->size + missingSpace));
}
