
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t const BYTE ;



__attribute__((used)) static int isSymbolSubset(const BYTE* symbols, size_t len, const BYTE* set, BYTE maxSymbolValue)
{
    size_t i;

    for (i = 0; i < len; i++) {
        if (symbols[i] > maxSymbolValue || !set[symbols[i]]) {
            return 0;
        }
    }
    return 1;
}
