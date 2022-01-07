
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_auth_delim(WCHAR val, BOOL acceptSlash) {
    return (val == '#' || val == '/' || val == '?' ||
            val == '\0' || (acceptSlash && val == '\\'));
}
