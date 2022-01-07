
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_pubchar(WCHAR ch)
{
    return (ch == ' ') ||
           (ch >= 'a' && ch <= 'z') ||
           (ch >= 'A' && ch <= 'Z') ||
           (ch >= '0' && ch <= '9') ||
           (ch >= '-' && ch <= ';') ||
           (ch == '=') || (ch == '?') ||
           (ch == '@') || (ch == '!') ||
           (ch >= '#' && ch <= '%') ||
           (ch == '_') || (ch == '\r') || (ch == '\n');
}
