
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ URL_SCHEME ;
typedef int BOOL ;


 scalar_t__ URL_SCHEME_FILE ;

__attribute__((used)) static inline BOOL is_path_delim(URL_SCHEME scheme, WCHAR val) {
    return (!val || (val == '#' && scheme != URL_SCHEME_FILE) || val == '?');
}
