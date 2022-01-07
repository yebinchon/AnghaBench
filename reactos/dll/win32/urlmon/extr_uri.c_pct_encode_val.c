
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int* hexDigits ;

__attribute__((used)) static inline void pct_encode_val(WCHAR val, WCHAR *dest) {
    dest[0] = '%';
    dest[1] = hexDigits[(val >> 4) & 0xf];
    dest[2] = hexDigits[val & 0xf];
}
