
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; int limit; char const** data; int expret; TYPE_2__ IACList_iface; TYPE_1__ IEnumString_iface; } ;
typedef TYPE_3__ TestACL ;


 TYPE_3__* CoTaskMemAlloc (int) ;
 int S_OK ;
 int TestACLVtbl ;
 int TestACL_ACListVtbl ;
 int ZeroMemory (TYPE_3__*,int) ;

__attribute__((used)) static TestACL *TestACL_Constructor(int limit, const char **strings)
{
    TestACL *This = CoTaskMemAlloc(sizeof(TestACL));
    ZeroMemory(This, sizeof(*This));
    This->IEnumString_iface.lpVtbl = &TestACLVtbl;
    This->IACList_iface.lpVtbl = &TestACL_ACListVtbl;
    This->ref = 1;
    This->expret = S_OK;
    This->limit = limit;
    This->data = strings;
    return This;
}
