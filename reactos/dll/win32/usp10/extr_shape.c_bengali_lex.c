
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int lex_Ra ;
 int unicode_lex (int) ;

__attribute__((used)) static int bengali_lex(WCHAR c)
{
    switch (c)
    {
        case 0x09B0: return lex_Ra;
        default:
            return unicode_lex(c);
    }
}
