
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 scalar_t__ is_alpha (char) ;
 scalar_t__ is_num (char) ;

__attribute__((used)) static inline BOOL is_unreserved(WCHAR val) {
    return (is_alpha(val) || is_num(val) || val == '-' || val == '.' ||
            val == '_' || val == '~');
}
