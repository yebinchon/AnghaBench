
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int lex_Matra_post ;
 int unicode_lex (int) ;

__attribute__((used)) static int sinhala_lex(WCHAR c)
{
    switch (c)
    {
        case 0x0DDA:
        case 0x0DDD:
        case 0x0DDC:
        case 0x0DDE: return lex_Matra_post;
        default:
            return unicode_lex(c);
    }
}
