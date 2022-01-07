
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int WCHAR ;
struct TYPE_3__ {int output; int* parts; } ;
typedef int INT ;
typedef int HDC ;
typedef TYPE_1__ ConsonantComponents ;



__attribute__((used)) static void ComposeConsonants(HDC hdc, WCHAR *pwOutChars, INT *pcChars, const ConsonantComponents consonants[], WORD* pwLogClust)
{
    int i;
    int offset = 0;
    int cWalk;

    for (cWalk = 0; cWalk < *pcChars; cWalk += 2)
    {
        for (i = 0; consonants[i].output!= 0x0; i++)
        {
            int j;
            for (j = 0; j + cWalk < *pcChars && consonants[i].parts[j]!=0x0; j++)
                if (pwOutChars[cWalk+j] != consonants[i].parts[j])
                    break;

            if (consonants[i].parts[j]==0x0)
            {
                int k;
                j--;
                pwOutChars[cWalk] = consonants[i].output;
                for(k = cWalk+1; k < *pcChars - j; k++)
                    pwOutChars[k] = pwOutChars[k+j];
                *pcChars = *pcChars - j;
                for (k = j ; k > 0; k--)
                    pwLogClust[cWalk + k + offset] = pwLogClust[cWalk + offset];
                offset += j;
                for (k = cWalk + j + offset; k < *pcChars + offset; k++)
                    pwLogClust[k]--;
                break;
            }
        }
    }
}
