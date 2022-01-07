
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keyword {unsigned int len; int type; int const* name; } ;
typedef int WCHAR ;


 int ARRAY_SIZE (int ) ;
 unsigned int MAX_TOKEN_LEN ;
 int TK_ID ;
 struct keyword* bsearch (struct keyword*,int ,int ,int,int ) ;
 int cmp_keyword ;
 int keyword_table ;

__attribute__((used)) static int keyword_type( const WCHAR *str, unsigned int len )
{
    struct keyword key, *ret;

    if (len > MAX_TOKEN_LEN) return TK_ID;

    key.name = str;
    key.len = len;
    key.type = 0;
    ret = bsearch( &key, keyword_table, ARRAY_SIZE(keyword_table), sizeof(struct keyword), cmp_keyword );
    if (ret) return ret->type;
    return TK_ID;
}
