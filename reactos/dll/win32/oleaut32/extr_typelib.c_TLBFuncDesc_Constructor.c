
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int custdata_list; } ;
typedef TYPE_1__ TLBFuncDesc ;


 int list_init (int *) ;

__attribute__((used)) static void TLBFuncDesc_Constructor(TLBFuncDesc *func_desc)
{
    list_init(&func_desc->custdata_list);
}
