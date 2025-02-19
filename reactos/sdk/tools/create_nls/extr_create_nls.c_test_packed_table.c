
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef size_t DWORD ;


 size_t HIBYTE (int) ;
 int LOBYTE (int) ;
 size_t lstrlenW (int*) ;

__attribute__((used)) static void test_packed_table(WCHAR *table)
{
    WCHAR test_str[] = L"This is an English text. \x0CF\x0EE-\x0F0\x0F3\x0F1\x0F1\x0EA\x0E8 \x0FF \x0EF\x0E8\x0F1\x0E0\x0F2\x0FC \x0F3\x0EC\x0E5\x0FE \x0ED\x0E5\x0EC\x0ED\x0EE\x0E6\x0EA\x0EE. 1234567890";


    DWORD i, len;

    len = lstrlenW(test_str);

    for(i = 0; i < len + 1; i++) {
        test_str[i] += table[table[table[HIBYTE(test_str[i])] + (LOBYTE(test_str[i]) >> 4)] + (LOBYTE(test_str[i]) & 0x0F)];
    }
}
