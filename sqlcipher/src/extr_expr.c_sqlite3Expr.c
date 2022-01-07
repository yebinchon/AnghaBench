
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_3__ {char const* z; int n; } ;
typedef TYPE_1__ Token ;
typedef int Expr ;


 int * sqlite3ExprAlloc (int *,int,TYPE_1__*,int ) ;
 int sqlite3Strlen30 (char const*) ;

Expr *sqlite3Expr(
  sqlite3 *db,
  int op,
  const char *zToken
){
  Token x;
  x.z = zToken;
  x.n = sqlite3Strlen30(zToken);
  return sqlite3ExprAlloc(db, op, &x, 0);
}
