
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int custdata_list; } ;
typedef TYPE_1__ TLBImplType ;


 int list_init (int *) ;

__attribute__((used)) static void TLBImplType_Constructor(TLBImplType *impl)
{
    list_init(&impl->custdata_list);
}
