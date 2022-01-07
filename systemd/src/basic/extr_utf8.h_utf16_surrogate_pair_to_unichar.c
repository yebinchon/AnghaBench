
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char32_t ;
typedef scalar_t__ char16_t ;



__attribute__((used)) static inline char32_t utf16_surrogate_pair_to_unichar(char16_t lead, char16_t trail) {
        return ((((char32_t) lead - 0xd800U) << 10) + ((char32_t) trail - 0xdc00U) + 0x10000U);
}
