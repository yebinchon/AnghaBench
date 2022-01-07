
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t elem_type_t ;
struct TYPE_2__ {scalar_t__ dispiid; int iids; int tag; } ;
typedef int IUnknown ;


 size_t ET_A ;
 int _test_disp (unsigned int,int *,scalar_t__,char*) ;
 int _test_elem_tag (unsigned int,int *,int ) ;
 int _test_ifaces (unsigned int,int *,int ) ;
 TYPE_1__* elem_type_infos ;

__attribute__((used)) static void _test_elem_type(unsigned line, IUnknown *unk, elem_type_t type)
{
    _test_elem_tag(line, unk, elem_type_infos[type].tag);
    _test_ifaces(line, unk, elem_type_infos[type].iids);

    if(elem_type_infos[type].dispiid && type != ET_A)
        _test_disp(line, unk, elem_type_infos[type].dispiid, "[object]");
}
