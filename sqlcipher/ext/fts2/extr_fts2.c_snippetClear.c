
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zSnippet; int zOffset; int aMatch; } ;
typedef TYPE_1__ Snippet ;


 int CLEAR (TYPE_1__*) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static void snippetClear(Snippet *p){
  sqlite3_free(p->aMatch);
  sqlite3_free(p->zOffset);
  sqlite3_free(p->zSnippet);
  CLEAR(p);
}
