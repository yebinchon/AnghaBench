
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int dummy; } ;


 int ERR (char*,char const*) ;

__attribute__((used)) static int wql_error( struct parser *parser, const char *str )
{
    ERR("%s\n", str);
    return 0;
}
