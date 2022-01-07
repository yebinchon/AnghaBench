
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int tokenType; int len; int const* name; } ;
typedef TYPE_1__ Keyword ;


 int ARRAY_SIZE (int ) ;
 int MAX_TOKEN_LEN ;
 int TK_ID ;
 int aKeywordTable ;
 TYPE_1__* bsearch (TYPE_1__*,int ,int ,int,int ) ;
 int compKeyword ;

__attribute__((used)) static int sqliteKeywordCode(const WCHAR *z, int n){
  Keyword key, *r;

  if( n>MAX_TOKEN_LEN )
    return TK_ID;

  key.tokenType = 0;
  key.name = z;
  key.len = n;
  r = bsearch( &key, aKeywordTable, ARRAY_SIZE(aKeywordTable), sizeof(Keyword), compKeyword );
  if( r )
    return r->tokenType;
  return TK_ID;
}
