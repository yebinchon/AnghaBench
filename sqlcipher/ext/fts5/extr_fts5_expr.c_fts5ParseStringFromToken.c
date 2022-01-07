
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int p; } ;
typedef TYPE_1__ Fts5Token ;


 int SQLITE_OK ;
 char* sqlite3Fts5Strndup (int*,int ,int ) ;

__attribute__((used)) static int fts5ParseStringFromToken(Fts5Token *pToken, char **pz){
  int rc = SQLITE_OK;
  *pz = sqlite3Fts5Strndup(&rc, pToken->p, pToken->n);
  return rc;
}
