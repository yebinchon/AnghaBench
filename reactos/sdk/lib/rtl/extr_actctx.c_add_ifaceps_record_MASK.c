#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ifacepsredirect_data {int size; int name_len; int name_offset; int /*<<< orphan*/  base; int /*<<< orphan*/  tlbid; int /*<<< orphan*/  nummethods; int /*<<< orphan*/  iid; int /*<<< orphan*/  mask; } ;
struct guidsection_header {int dummy; } ;
struct guid_index {int data_offset; int data_len; int rosterindex; int /*<<< orphan*/  guid; } ;
struct entity_array {unsigned int num; struct entity* base; } ;
struct TYPE_3__ {scalar_t__ name; int /*<<< orphan*/  base; int /*<<< orphan*/  tlib; int /*<<< orphan*/  nummethods; int /*<<< orphan*/  ps32; int /*<<< orphan*/  mask; int /*<<< orphan*/  iid; } ;
struct TYPE_4__ {TYPE_1__ ifaceps; } ;
struct entity {scalar_t__ kind; TYPE_2__ u; } ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct guidsection_header *section, struct entity_array *entities,
    struct guid_index **index, ULONG *data_offset, ULONG rosterindex)
{
    unsigned int i;

    for (i = 0; i < entities->num; i++)
    {
        struct entity *entity = &entities->base[i];
        if (entity->kind == ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION)
        {
            struct ifacepsredirect_data *data = (struct ifacepsredirect_data*)((BYTE*)section + *data_offset);
            UNICODE_STRING str;
            ULONG name_len;

            if (entity->u.ifaceps.name)
                name_len = FUNC5(entity->u.ifaceps.name)*sizeof(WCHAR);
            else
                name_len = 0;

            /* setup index */
            FUNC1(&str, entity->u.ifaceps.iid);
            FUNC0(&str, &(*index)->guid);
            (*index)->data_offset = *data_offset;
            (*index)->data_len = sizeof(*data) + name_len ? FUNC2(name_len + sizeof(WCHAR)) : 0;
            (*index)->rosterindex = rosterindex;

            /* setup data record */
            data->size = sizeof(*data);
            data->mask = entity->u.ifaceps.mask;

            /* proxyStubClsid32 value is only stored for external PS,
               if set it's used as iid, otherwise 'iid' attribute value is used */
            if (entity->u.ifaceps.ps32)
            {
                FUNC1(&str, entity->u.ifaceps.ps32);
                FUNC0(&str, &data->iid);
            }
            else
                data->iid = (*index)->guid;

            data->nummethods = entity->u.ifaceps.nummethods;

            if (entity->u.ifaceps.tlib)
            {
                FUNC1(&str, entity->u.ifaceps.tlib);
                FUNC0(&str, &data->tlbid);
            }
            else
                FUNC4(&data->tlbid, 0, sizeof(data->tlbid));

            if (entity->u.ifaceps.base)
            {
                FUNC1(&str, entity->u.ifaceps.base);
                FUNC0(&str, &data->base);
            }
            else
                FUNC4(&data->base, 0, sizeof(data->base));

            data->name_len = name_len;
            data->name_offset = data->name_len ? sizeof(*data) : 0;

            /* name string */
            if (data->name_len)
            {
                WCHAR *ptrW = (WCHAR*)((BYTE*)data + data->name_offset);
                FUNC3(ptrW, entity->u.ifaceps.name, data->name_len);
                ptrW[data->name_len/sizeof(WCHAR)] = 0;
            }

            /* move to next record */
            (*index) += 1;
            *data_offset += sizeof(*data);
            if (data->name_len)
                *data_offset += FUNC2(data->name_len + sizeof(WCHAR));
        }
    }
}