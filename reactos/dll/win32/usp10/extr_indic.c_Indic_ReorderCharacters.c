
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* reorder_function ) (int *,int *,int ) ;
typedef int lexical_function ;
typedef int WCHAR ;
typedef int ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef int IndicSyllable ;
typedef int HDC ;
typedef int BOOL ;


 int ERR (char*) ;
 int Indic_ParseSyllables (int ,int *,int *,int *,unsigned int,int **,int*,int ,int ) ;

void Indic_ReorderCharacters(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache *psc, WCHAR *input, unsigned int cChar,
        IndicSyllable **syllables, int *syllable_count, lexical_function lex, reorder_function reorder_f, BOOL modern)
{
    int i;

    if (!reorder_f)
    {
        ERR("Failure to have required functions\n");
        return;
    }

    Indic_ParseSyllables(hdc, psa, psc, input, cChar, syllables, syllable_count, lex, modern);
    for (i = 0; i < *syllable_count; i++)
        reorder_f(input, &(*syllables)[i], lex);
}
