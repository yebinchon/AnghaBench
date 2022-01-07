
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int stgType; scalar_t__* name; int clsid; int size; } ;
struct TYPE_5__ {int type; scalar_t__ reserved; scalar_t__ grfStateBits; int clsid; scalar_t__ grfLocksSupported; scalar_t__ grfMode; int cbSize; scalar_t__ pwcsName; } ;
typedef int StorageBaseImpl ;
typedef TYPE_1__ STATSTG ;
typedef TYPE_2__ DirEntry ;


 scalar_t__ CoTaskMemAlloc (int) ;
 int STATFLAG_NONAME ;



 int StorageBaseImpl_GetFilename (int *,scalar_t__*) ;
 int lstrcpyW (scalar_t__,scalar_t__*) ;
 int lstrlenW (scalar_t__*) ;

void StorageUtl_CopyDirEntryToSTATSTG(
  StorageBaseImpl* storage,
  STATSTG* destination,
  const DirEntry* source,
  int statFlags)
{



  if (!(statFlags & STATFLAG_NONAME) && source->stgType == 130)
  {

    destination->pwcsName = 0;
    StorageBaseImpl_GetFilename(storage, &destination->pwcsName);
  }
  else if( ((statFlags & STATFLAG_NONAME) != 0) ||
       (source->name[0] == 0) )
  {
    destination->pwcsName = 0;
  }
  else
  {
    destination->pwcsName =
      CoTaskMemAlloc((lstrlenW(source->name)+1)*sizeof(WCHAR));

    lstrcpyW(destination->pwcsName, source->name);
  }

  switch (source->stgType)
  {
    case 129:
    case 130:
      destination->type = 129;
      break;
    case 128:
      destination->type = 128;
      break;
    default:
      destination->type = 128;
      break;
  }

  destination->cbSize = source->size;





  destination->grfMode = 0;
  destination->grfLocksSupported = 0;
  destination->clsid = source->clsid;
  destination->grfStateBits = 0;
  destination->reserved = 0;
}
