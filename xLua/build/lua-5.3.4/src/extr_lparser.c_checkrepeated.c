
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int L; } ;
struct TYPE_11__ {TYPE_5__* ls; TYPE_1__* bl; } ;
struct TYPE_10__ {int n; TYPE_2__* arr; } ;
struct TYPE_9__ {int line; int name; } ;
struct TYPE_8__ {int firstlabel; } ;
typedef int TString ;
typedef TYPE_3__ Labellist ;
typedef TYPE_4__ FuncState ;


 scalar_t__ eqstr (int *,int ) ;
 int getstr (int *) ;
 char* luaO_pushfstring (int ,char*,int ,int ) ;
 int semerror (TYPE_5__*,char const*) ;

__attribute__((used)) static void checkrepeated (FuncState *fs, Labellist *ll, TString *label) {
  int i;
  for (i = fs->bl->firstlabel; i < ll->n; i++) {
    if (eqstr(label, ll->arr[i].name)) {
      const char *msg = luaO_pushfstring(fs->ls->L,
                          "label '%s' already defined on line %d",
                          getstr(label), ll->arr[i].line);
      semerror(fs->ls, msg);
    }
  }
}
