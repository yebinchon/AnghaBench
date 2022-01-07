
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum directions { ____Placeholder_directions } directions ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_3__ {int fLegacyBidiClass; } ;
typedef TYPE_1__ SCRIPT_CONTROL ;
typedef unsigned int DWORD ;
 int FSI ;

 int LRE ;
 int LRI ;
 int LRO ;
 int NI ;



 int PDI ;

 int RLE ;
 int RLI ;
 int RLO ;


 int get_char_typeW (int const) ;

__attribute__((used)) static void classify(const WCHAR *string, WORD *chartype, DWORD count, const SCRIPT_CONTROL *c)
{
    static const enum directions dir_map[16] =
    {
        134,
        134,
        130,
        137,
        136,
        135,
        141,
        138,
        140,
        129,
        128,
        132,
        142,
        133,
        139,
        131
    };

    unsigned i;

    for (i = 0; i < count; ++i)
    {
        chartype[i] = dir_map[get_char_typeW(string[i]) >> 12];
        switch (chartype[i])
        {
        case 136:
            if (!c->fLegacyBidiClass) break;
            switch (string[i])
            {
            case '-':
            case '+': chartype[i] = NI; break;
            case '/': chartype[i] = 138; break;
            }
            break;
        case 131:
            switch (string[i])
            {
            case 0x202A: chartype[i] = LRE; break;
            case 0x202B: chartype[i] = RLE; break;
            case 0x202C: chartype[i] = 131; break;
            case 0x202D: chartype[i] = LRO; break;
            case 0x202E: chartype[i] = RLO; break;
            case 0x2066: chartype[i] = LRI; break;
            case 0x2067: chartype[i] = RLI; break;
            case 0x2068: chartype[i] = FSI; break;
            case 0x2069: chartype[i] = PDI; break;
            }
            break;
        }
    }
}
