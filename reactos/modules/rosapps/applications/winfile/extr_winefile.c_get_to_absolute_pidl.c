
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ etype; scalar_t__ pidl; struct TYPE_4__* up; } ;
typedef int * LPITEMIDLIST ;
typedef int HWND ;
typedef TYPE_1__ Entry ;


 scalar_t__ ET_SHELL ;
 scalar_t__ ET_WINDOWS ;
 int * ILClone (scalar_t__) ;
 int * ILCombine (int *,int *) ;
 int MAX_PATH ;
 int get_path (TYPE_1__*,int *) ;
 int * get_path_pidl (int *,int ) ;

__attribute__((used)) static LPITEMIDLIST get_to_absolute_pidl(Entry* entry, HWND hwnd)
{
 if (entry->up && entry->up->etype==ET_SHELL) {
  LPITEMIDLIST idl = ((void*)0);

  while (entry->up) {
   idl = ILCombine(ILClone(entry->pidl), idl);
   entry = entry->up;
  }

  return idl;
 } else if (entry->etype == ET_WINDOWS) {
  WCHAR path[MAX_PATH];

  get_path(entry, path);

  return get_path_pidl(path, hwnd);
 } else if (entry->pidl)
  return ILClone(entry->pidl);

 return ((void*)0);
}
