
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * str; } ;
typedef TYPE_1__ TLBString ;
typedef int * BSTR ;



__attribute__((used)) static inline BSTR TLB_get_bstr(const TLBString *str)
{
    return str != ((void*)0) ? str->str : ((void*)0);
}
