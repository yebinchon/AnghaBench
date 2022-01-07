
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gunichar ;
typedef enum CharClass { ____Placeholder_CharClass } CharClass ;


 int DIGIT ;
 int LOWER ;
 int NON_WORD ;
 int UPPER ;
 scalar_t__ g_unichar_isdigit (int ) ;
 scalar_t__ g_unichar_islower (int ) ;
 scalar_t__ g_unichar_isupper (int ) ;

__attribute__((used)) static enum CharClass rofi_scorer_get_character_class ( gunichar c )
{
    if ( g_unichar_islower ( c ) ) {
        return LOWER;
    }
    if ( g_unichar_isupper ( c ) ) {
        return UPPER;
    }
    if ( g_unichar_isdigit ( c ) ) {
        return DIGIT;
    }
    return NON_WORD;
}
