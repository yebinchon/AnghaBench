
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** LPWSTR ;


 int heap_free (int *****) ;

__attribute__((used)) static void HTTP_FreeTokens(LPWSTR * token_array)
{
    int i;
    for (i = 0; token_array[i]; i++) heap_free(token_array[i]);
    heap_free(token_array);
}
