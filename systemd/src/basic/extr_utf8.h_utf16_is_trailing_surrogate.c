
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char16_t ;



__attribute__((used)) static inline bool utf16_is_trailing_surrogate(char16_t c) {
        return c >= 0xdc00U && c <= 0xdfffU;
}
