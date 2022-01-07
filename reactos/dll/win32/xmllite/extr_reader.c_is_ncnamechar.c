
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_ncnamechar(WCHAR ch)
{
    return (ch >= 'A' && ch <= 'Z') ||
           (ch == '_') || (ch >= 'a' && ch <= 'z') ||
           (ch == '-') || (ch == '.') ||
           (ch >= '0' && ch <= '9') ||
           (ch == 0xb7) ||
           (ch >= 0xc0 && ch <= 0xd6) ||
           (ch >= 0xd8 && ch <= 0xf6) ||
           (ch >= 0xf8 && ch <= 0x2ff) ||
           (ch >= 0x300 && ch <= 0x36f) ||
           (ch >= 0x370 && ch <= 0x37d) ||
           (ch >= 0x37f && ch <= 0x1fff) ||
           (ch >= 0x200c && ch <= 0x200d) ||
           (ch >= 0x203f && ch <= 0x2040) ||
           (ch >= 0x2070 && ch <= 0x218f) ||
           (ch >= 0x2c00 && ch <= 0x2fef) ||
           (ch >= 0x3001 && ch <= 0xd7ff) ||
           (ch >= 0xd800 && ch <= 0xdbff) ||
           (ch >= 0xdc00 && ch <= 0xdfff) ||
           (ch >= 0xf900 && ch <= 0xfdcf) ||
           (ch >= 0xfdf0 && ch <= 0xfffd);
}
