
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* zSelf; struct TYPE_7__* zVocabLang; struct TYPE_7__* zVocabWord; struct TYPE_7__* zVocabTab; struct TYPE_7__* zCostTab; struct TYPE_7__* zDb; struct TYPE_7__* zClassName; } ;
typedef TYPE_1__ amatch_vtab ;


 int amatchFreeRules (TYPE_1__*) ;
 int amatchVCheckClear (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void amatchFree(amatch_vtab *p){
  if( p ){
    amatchFreeRules(p);
    amatchVCheckClear(p);
    sqlite3_free(p->zClassName);
    sqlite3_free(p->zDb);
    sqlite3_free(p->zCostTab);
    sqlite3_free(p->zVocabTab);
    sqlite3_free(p->zVocabWord);
    sqlite3_free(p->zVocabLang);
    sqlite3_free(p->zSelf);
    memset(p, 0, sizeof(*p));
    sqlite3_free(p);
  }
}
