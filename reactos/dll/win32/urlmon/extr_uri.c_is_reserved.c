
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 scalar_t__ is_gendelim (int ) ;
 scalar_t__ is_subdelim (int ) ;

__attribute__((used)) static inline BOOL is_reserved(WCHAR val) {
    return (is_subdelim(val) || is_gendelim(val));
}
