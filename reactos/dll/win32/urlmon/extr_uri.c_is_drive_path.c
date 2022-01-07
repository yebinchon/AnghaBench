
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 scalar_t__ is_alpha (char const) ;

__attribute__((used)) static inline BOOL is_drive_path(const WCHAR *str) {
    return (is_alpha(str[0]) && (str[1] == ':' || str[1] == '|'));
}
