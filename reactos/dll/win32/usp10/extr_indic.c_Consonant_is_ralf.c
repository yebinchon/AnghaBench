
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ (* lexical_function ) (int const) ;
typedef int WCHAR ;
struct TYPE_3__ {size_t start; size_t end; } ;
typedef int ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef TYPE_1__ IndicSyllable ;
typedef int HDC ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ SHAPE_does_GSUB_feature_apply_to_chars (int ,int *,int *,int const*,int,int,char*) ;
 scalar_t__ lex_Halant ;
 scalar_t__ lex_Ra ;

__attribute__((used)) static BOOL Consonant_is_ralf(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache *psc,
        const WCHAR *pwChar, const IndicSyllable *s, lexical_function lexical)
{
    if ((lexical(pwChar[s->start])==lex_Ra) && s->end > s->start && lexical(pwChar[s->start+1]) == lex_Halant)
        return (SHAPE_does_GSUB_feature_apply_to_chars(hdc, psa, psc, &pwChar[s->start], 1, 2, "rphf") > 0);
    return FALSE;
}
