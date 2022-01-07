
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str; } ;
typedef TYPE_1__ TLBString ;
typedef int DWORD ;


 int memcmp (void*,int ,int ) ;

__attribute__((used)) static inline int TLB_str_memcmp(void *left, const TLBString *str, DWORD len)
{
    if(!str)
        return 1;
    return memcmp(left, str->str, len);
}
