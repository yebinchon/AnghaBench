
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_3__ {int base; scalar_t__* parts; } ;
typedef TYPE_1__ VowelComponents ;
typedef int INT ;
typedef int HDC ;


 int ReplaceInsertChars (int ,int,int*,int*,scalar_t__*) ;
 int UpdateClusters (int,int,int,int,int *) ;

__attribute__((used)) static void DecomposeVowels(HDC hdc, WCHAR *pwOutChars, INT *pcChars, const VowelComponents vowels[], WORD* pwLogClust, INT cChars)
{
    int i;
    int cWalk;

    for (cWalk = 0; cWalk < *pcChars; cWalk++)
    {
        for (i = 0; vowels[i].base != 0x0; i++)
        {
            if (pwOutChars[cWalk] == vowels[i].base)
            {
                int o = 0;
                ReplaceInsertChars(hdc, cWalk, pcChars, pwOutChars, vowels[i].parts);
                if (vowels[i].parts[1]) { cWalk++; o++; }
                if (vowels[i].parts[2]) { cWalk++; o++; }
                UpdateClusters(cWalk, o, 1, cChars, pwLogClust);
                break;
            }
        }
    }
}
