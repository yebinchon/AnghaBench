
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t member_1; int const* member_0; } ;
typedef TYPE_1__ substr_t ;
typedef int WCHAR ;



__attribute__((used)) static inline substr_t substr(const WCHAR *str, size_t len)
{
    substr_t r = {str, len};
    return r;
}
