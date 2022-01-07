
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int posguid; } ;
struct TYPE_12__ {TYPE_2__ typelib_header; TYPE_1__* typelib; } ;
typedef TYPE_4__ msft_typelib_t ;
struct TYPE_13__ {int hreftype; int next_hash; void* guid; } ;
struct TYPE_11__ {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_9__ {int attrs; } ;
typedef TYPE_5__ MSFT_GuidEntry ;
typedef void* GUID ;


 int ATTR_UUID ;
 int ctl2_alloc_guid (TYPE_4__*,TYPE_5__*) ;
 void* get_attrp (int ,int ) ;

__attribute__((used)) static void set_guid(msft_typelib_t *typelib)
{
    MSFT_GuidEntry guidentry;
    int offset;
    void *ptr;
    GUID guid = {0,0,0,{0,0,0,0,0,0}};

    guidentry.guid = guid;
    guidentry.hreftype = -2;
    guidentry.next_hash = -1;

    ptr = get_attrp( typelib->typelib->attrs, ATTR_UUID );
    if (ptr) guidentry.guid = *(GUID *)ptr;

    offset = ctl2_alloc_guid(typelib, &guidentry);
    typelib->typelib_header.posguid = offset;

    return;
}
