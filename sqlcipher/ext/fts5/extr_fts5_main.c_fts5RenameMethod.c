
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_2__ {int pStorage; } ;
typedef TYPE_1__ Fts5FullTable ;


 int sqlite3Fts5StorageRename (int ,char const*) ;

__attribute__((used)) static int fts5RenameMethod(
  sqlite3_vtab *pVtab,
  const char *zName
){
  Fts5FullTable *pTab = (Fts5FullTable*)pVtab;
  return sqlite3Fts5StorageRename(pTab->pStorage, zName);
}
