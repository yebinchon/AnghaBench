
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum CharClass { ____Placeholder_CharClass } CharClass ;


 int CAMEL_SCORE ;
 int DIGIT ;
 int LOWER ;
 int NON_WORD ;
 int NON_WORD_SCORE ;
 int UPPER ;
 int WORD_START_SCORE ;

__attribute__((used)) static int rofi_scorer_get_score_for ( enum CharClass prev, enum CharClass curr )
{
    if ( prev == NON_WORD && curr != NON_WORD ) {
        return WORD_START_SCORE;
    }
    if ( ( prev == LOWER && curr == UPPER ) ||
         ( prev != DIGIT && curr == DIGIT ) ) {
        return CAMEL_SCORE;
    }
    if ( curr == NON_WORD ) {
        return NON_WORD_SCORE;
    }
    return 0;
}
