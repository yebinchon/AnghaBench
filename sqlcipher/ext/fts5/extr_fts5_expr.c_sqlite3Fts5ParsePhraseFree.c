
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5ExprPhrase ;


 int fts5ExprPhraseFree (int *) ;

void sqlite3Fts5ParsePhraseFree(Fts5ExprPhrase *pPhrase){
  fts5ExprPhraseFree(pPhrase);
}
