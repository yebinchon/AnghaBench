
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {int * iDesktop; } ;
struct TYPE_5__ {char* cFileName; } ;
struct TYPE_6__ {scalar_t__ etype; struct TYPE_6__* up; TYPE_1__ data; int pidl; int * folder; } ;
typedef int SFGAOF ;
typedef char* PWSTR ;
typedef char* LPCWSTR ;
typedef int LPCITEMIDLIST ;
typedef int IShellFolder ;
typedef int HRESULT ;
typedef TYPE_2__ Entry ;


 scalar_t__ ET_SHELL ;
 scalar_t__ ET_UNIX ;
 TYPE_4__ Globals ;
 int IShellFolder_GetAttributesOf (int *,int,int *,int*) ;
 int MAX_PATH ;
 int SFGAO_FILESYSTEM ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int memcpy (char*,char*,int) ;
 int memmove (int ,char*,int) ;
 int path_from_pidlW (int *,int ,char*,int ) ;

__attribute__((used)) static void get_path(Entry* dir, PWSTR path)
{
 Entry* entry;
 int len = 0;
 int level = 0;

 if (dir->etype == ET_SHELL)
 {
  SFGAOF attribs;
  HRESULT hr = S_OK;

  path[0] = '\0';

  attribs = 0;

  if (dir->folder)
   hr = IShellFolder_GetAttributesOf(dir->folder, 1, (LPCITEMIDLIST*)&dir->pidl, &attribs);

  if (SUCCEEDED(hr) && (attribs&SFGAO_FILESYSTEM)) {
   IShellFolder* parent = dir->up? dir->up->folder: Globals.iDesktop;

   hr = path_from_pidlW(parent, dir->pidl, path, MAX_PATH);
  }
 }
 else
 {
  for(entry=dir; entry; level++) {
   LPCWSTR name;
   int l;

   {
    LPCWSTR s;
    name = entry->data.cFileName;
    s = name;

    for(l=0; *s && *s != '/' && *s != '\\'; s++)
     l++;
   }

   if (entry->up) {
    if (l > 0) {
     memmove(path+l+1, path, len*sizeof(WCHAR));
     memcpy(path+1, name, l*sizeof(WCHAR));
     len += l+1;

     if (entry->etype == ET_UNIX)
      path[0] = '/';
     else
                                                path[0] = '\\';
    }

    entry = entry->up;
   } else {
    memmove(path+l, path, len*sizeof(WCHAR));
    memcpy(path, name, l*sizeof(WCHAR));
    len += l;
    break;
   }
  }

  if (!level) {
   if (entry->etype == ET_UNIX)
    path[len++] = '/';
   else
    path[len++] = '\\';
  }

  path[len] = '\0';
 }
}
