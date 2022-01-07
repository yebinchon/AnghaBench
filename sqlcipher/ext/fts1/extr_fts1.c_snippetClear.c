
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zSnippet; int zOffset; int aMatch; } ;
typedef TYPE_1__ Snippet ;


 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void snippetClear(Snippet *p){
  free(p->aMatch);
  free(p->zOffset);
  free(p->zSnippet);
  memset(p, 0, sizeof(*p));
}
