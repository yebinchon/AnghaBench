
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;



__attribute__((used)) static inline int is_private_use_area_char(WCHAR code)
{
    return (code >= 0xe000 && code <= 0xf8ff);
}
