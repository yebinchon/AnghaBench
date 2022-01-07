
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int * LPCWSTR ;
typedef unsigned int DWORD ;


 int bidi_direction_table ;
 int get_table_entry (int ,int ) ;

__attribute__((used)) static void classify(LPCWSTR lpString, WORD *chartype, DWORD uCount)
{
    unsigned i;

    for (i = 0; i < uCount; ++i)
        chartype[i] = get_table_entry( bidi_direction_table, lpString[i] );
}
