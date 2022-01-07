
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;


 int spellfix1Uninit (int ,int *) ;

__attribute__((used)) static int spellfix1Disconnect(sqlite3_vtab *pVTab){
  return spellfix1Uninit(0, pVTab);
}
