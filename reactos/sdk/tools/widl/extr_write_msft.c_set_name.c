
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int NameOffset; } ;
struct TYPE_8__ {TYPE_2__ typelib_header; TYPE_1__* typelib; } ;
typedef TYPE_3__ msft_typelib_t ;
struct TYPE_6__ {int name; } ;


 int ctl2_alloc_name (TYPE_3__*,int ) ;

__attribute__((used)) static void set_name(msft_typelib_t *typelib)
{
    int offset;

    offset = ctl2_alloc_name(typelib, typelib->typelib->name);
    if (offset == -1) return;
    typelib->typelib_header.NameOffset = offset;
    return;
}
