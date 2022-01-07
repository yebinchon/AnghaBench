
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fd; } ;
struct TYPE_7__ {int SizeOfRawData; int PointerToRawData; } ;
typedef TYPE_1__ PeSect ;
typedef TYPE_2__ Pe ;
typedef int DwarfBlock ;


 TYPE_1__* nil ;
 TYPE_1__* pesection (TYPE_2__*,char*) ;
 int readblock (int ,int *,int ,int ) ;

int
loaddisksection(Pe *pe, char *name, DwarfBlock *b)
{
 PeSect *s;
 if((s = pesection(pe, name)) == nil)
  return -1;
 return readblock(pe->fd, b, s->PointerToRawData, s->SizeOfRawData);
}
