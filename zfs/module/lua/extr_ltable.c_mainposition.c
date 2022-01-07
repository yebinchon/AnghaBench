
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Table ;
struct TYPE_6__ {int extra; int hash; int len; } ;
struct TYPE_7__ {TYPE_1__ tsv; } ;
typedef int TValue ;
typedef TYPE_2__ TString ;
typedef int Node ;
 int bvalue (int const*) ;
 int fvalue (int const*) ;
 int gcvalue (int const*) ;
 int getstr (TYPE_2__*) ;
 int * hashboolean (int const*,int ) ;
 int * hashnum (int const*,int ) ;
 int * hashpointer (int const*,int ) ;
 int * hashstr (int const*,TYPE_2__*) ;
 int luaS_hash (int ,int ,int ) ;
 int nvalue (int const*) ;
 int pvalue (int const*) ;
 TYPE_2__* rawtsvalue (int const*) ;
 int ttype (int const*) ;

__attribute__((used)) static Node *mainposition (const Table *t, const TValue *key) {
  switch (ttype(key)) {
    case 129:
      return hashnum(t, nvalue(key));
    case 130: {
      TString *s = rawtsvalue(key);
      if (s->tsv.extra == 0) {
        s->tsv.hash = luaS_hash(getstr(s), s->tsv.len, s->tsv.hash);
        s->tsv.extra = 1;
      }
      return hashstr(t, rawtsvalue(key));
    }
    case 128:
      return hashstr(t, rawtsvalue(key));
    case 133:
      return hashboolean(t, bvalue(key));
    case 131:
      return hashpointer(t, pvalue(key));
    case 132:
      return hashpointer(t, fvalue(key));
    default:
      return hashpointer(t, gcvalue(key));
  }
}
