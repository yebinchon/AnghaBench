
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {void* dirRootEntry; void* rightChild; void* leftChild; } ;
typedef void* DirRef ;
typedef TYPE_1__ DirEntry ;





 int assert (int ) ;

__attribute__((used)) static void setEntryLink(DirEntry *entry, ULONG relation, DirRef new_target)
{
  switch (relation)
  {
    case 128:
      entry->leftChild = new_target;
      break;
    case 129:
      entry->rightChild = new_target;
      break;
    case 130:
      entry->dirRootEntry = new_target;
      break;
    default:
      assert(0);
  }
}
