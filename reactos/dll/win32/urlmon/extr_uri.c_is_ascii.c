
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_ascii(WCHAR c)
{
    return c < 0x80;
}
