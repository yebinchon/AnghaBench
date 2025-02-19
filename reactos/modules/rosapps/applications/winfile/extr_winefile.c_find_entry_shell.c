
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ cb; } ;
struct TYPE_14__ {TYPE_2__ mkid; } ;
struct TYPE_13__ {TYPE_5__* pidl; struct TYPE_13__* next; struct TYPE_13__* down; } ;
struct TYPE_10__ {scalar_t__ cb; } ;
struct TYPE_12__ {TYPE_1__ mkid; } ;
typedef TYPE_3__* LPCITEMIDLIST ;
typedef TYPE_4__ Entry ;


 int memcmp (TYPE_5__*,TYPE_3__*,scalar_t__) ;

__attribute__((used)) static Entry* find_entry_shell(Entry* dir, LPCITEMIDLIST pidl)
{
 Entry* entry;

 for(entry=dir->down; entry; entry=entry->next) {
  if (entry->pidl->mkid.cb == pidl->mkid.cb &&
   !memcmp(entry->pidl, pidl, entry->pidl->mkid.cb))
   return entry;
 }

 return 0;
}
