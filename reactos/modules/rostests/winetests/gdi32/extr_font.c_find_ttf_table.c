
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef scalar_t__ DWORD ;
typedef void BYTE ;


 int GET_BE_DWORD (scalar_t__) ;
 scalar_t__ GET_BE_WORD (scalar_t__) ;

__attribute__((used)) static void *find_ttf_table( void *ttf, DWORD size, DWORD tag )
{
    WORD i, num_tables = GET_BE_WORD(*((WORD *)ttf + 2));
    DWORD *table = (DWORD *)ttf + 3;

    for (i = 0; i < num_tables; i++)
    {
        if (table[0] == tag)
            return (BYTE *)ttf + GET_BE_DWORD(table[2]);
        table += 4;
    }
    return ((void*)0);
}
