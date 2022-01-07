
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ (* lexical_function ) (int const) ;
typedef int WCHAR ;
struct TYPE_7__ {int start; unsigned int base; int ralf; int blwf; int pref; int end; } ;
typedef int ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef TYPE_1__ IndicSyllable ;
typedef int HDC ;
typedef int BOOL ;


 int ERR (char*) ;
 int FindBaseConsonant (int ,int *,int *,int const*,TYPE_1__*,scalar_t__ (*) (int const),int ) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapReAlloc (int ,int ,TYPE_1__*,int) ;
 int Indic_process_next_syllable (int const*,unsigned int,int ,unsigned int*,int,scalar_t__ (*) (int const)) ;
 int TRACE (char*,int,...) ;
 int debug_output_string (int const*,unsigned int,scalar_t__ (*) (int const)) ;
 TYPE_1__* heap_alloc (int) ;
 scalar_t__ lex_Generic ;

void Indic_ParseSyllables(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache *psc, const WCHAR *input, unsigned int cChar,
        IndicSyllable **syllables, int *syllable_count, lexical_function lex, BOOL modern)
{
    unsigned int center = 0;
    int index = 0;
    int next = 0;

    *syllable_count = 0;

    if (!lex)
    {
        ERR("Failure to have required functions\n");
        return;
    }

    debug_output_string(input, cChar, lex);
    while (next != -1)
    {
        while((next < cChar) && lex(input[next]) == lex_Generic)
            next++;
        index = next;
        if (next >= cChar)
            break;
        next = Indic_process_next_syllable(input, cChar, 0, &center, index, lex);
        if (next != -1)
        {
            if (*syllable_count)
                *syllables = HeapReAlloc(GetProcessHeap(),0,*syllables, sizeof(IndicSyllable)*(*syllable_count+1));
            else
                *syllables = heap_alloc(sizeof(**syllables));
            (*syllables)[*syllable_count].start = index;
            (*syllables)[*syllable_count].base = center;
            (*syllables)[*syllable_count].ralf = -1;
            (*syllables)[*syllable_count].blwf = -1;
            (*syllables)[*syllable_count].pref = -1;
            (*syllables)[*syllable_count].end = next-1;
            FindBaseConsonant(hdc, psa, psc, input, &(*syllables)[*syllable_count], lex, modern);
            index = next;
            *syllable_count = (*syllable_count)+1;
        }
        else if (index < cChar)
        {
            TRACE("Processing failed at %i\n",index);
            next = ++index;
        }
    }
    TRACE("Processed %i of %i characters into %i syllables\n",index,cChar,*syllable_count);
}
