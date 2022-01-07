
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_char(WCHAR ch)
{
    return (ch == '\t') || (ch == '\r') || (ch == '\n') ||
           (ch >= 0x20 && ch <= 0xd7ff) ||
           (ch >= 0xd800 && ch <= 0xdbff) ||
           (ch >= 0xdc00 && ch <= 0xdfff) ||
           (ch >= 0xe000 && ch <= 0xfffd);
}
