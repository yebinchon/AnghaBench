
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int unicode_lex (int ) ;

__attribute__((used)) static int tamil_lex(WCHAR c)
{
    return unicode_lex(c);
}
