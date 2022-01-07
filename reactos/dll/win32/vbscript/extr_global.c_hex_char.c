
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int WCHAR ;



__attribute__((used)) static inline WCHAR hex_char(unsigned n)
{
    return n < 10 ? '0'+n : 'A'+n-10;
}
