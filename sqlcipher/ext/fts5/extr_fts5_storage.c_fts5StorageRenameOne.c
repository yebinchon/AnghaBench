
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zName; int zDb; int db; } ;
typedef TYPE_1__ Fts5Config ;


 int SQLITE_OK ;
 int fts5ExecPrintf (int ,int ,char*,int ,int ,char const*,char const*,char const*) ;

__attribute__((used)) static void fts5StorageRenameOne(
  Fts5Config *pConfig,
  int *pRc,
  const char *zTail,
  const char *zName
){
  if( *pRc==SQLITE_OK ){
    *pRc = fts5ExecPrintf(pConfig->db, 0,
        "ALTER TABLE %Q.'%q_%s' RENAME TO '%q_%s';",
        pConfig->zDb, pConfig->zName, zTail, zName, zTail
    );
  }
}
