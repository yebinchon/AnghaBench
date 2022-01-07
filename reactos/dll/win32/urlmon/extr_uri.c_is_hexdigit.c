
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_hexdigit(WCHAR val) {
    return ((val >= 'a' && val <= 'f') ||
            (val >= 'A' && val <= 'F') ||
            (val >= '0' && val <= '9'));
}
