
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef unsigned char* LPSTR ;
typedef unsigned char* LPCSTR ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int jis2sjis (unsigned char*,unsigned char*) ;

__attribute__((used)) static UINT ConvertJIS2SJIS(LPCSTR input, DWORD count, LPSTR output)
{
    DWORD i = 0;
    int j = 0;
    unsigned char p2,p;
    BOOL shifted = FALSE;

    while (i < count)
    {
        p = input[i];
        if (p == 0x1b )
        {
            i++;
            if (i >= count)
                return 0;
            p2 = input[i];
            if (p2 == '$' || p2 =='(')
                i++;
            if (p2 == 'K' || p2 =='$')
                shifted = TRUE;
            else
                shifted = FALSE;
        }
        else
        {
            if (shifted)
            {
                i++;
                if (i >= count)
                    return 0;
                p2 = input[i];
                jis2sjis(&p,&p2);
                output[j++]=p;
                output[j++]=p2;
            }
            else
            {
                output[j++] = p;
            }
        }
        i++;
    }
    return j;
}
