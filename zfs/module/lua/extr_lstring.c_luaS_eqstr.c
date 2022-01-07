
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tt; } ;
struct TYPE_10__ {TYPE_1__ tsv; } ;
typedef TYPE_2__ TString ;


 scalar_t__ LUA_TSHRSTR ;
 scalar_t__ eqshrstr (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ luaS_eqlngstr (TYPE_2__*,TYPE_2__*) ;

int luaS_eqstr (TString *a, TString *b) {
  return (a->tsv.tt == b->tsv.tt) &&
         (a->tsv.tt == LUA_TSHRSTR ? eqshrstr(a, b) : luaS_eqlngstr(a, b));
}
