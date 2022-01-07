
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int id; char const* psz_desc; } ;


 TYPE_1__* ARIB_B10_PMT_Descriptors_descs ;

__attribute__((used)) static const char *ARIB_B10_Get_PMT_Descriptor_Description(uint8_t i_desc)
{
    for(uint8_t i=0; i<5; i++)
        if(ARIB_B10_PMT_Descriptors_descs[i].id == i_desc)
            return ARIB_B10_PMT_Descriptors_descs[i].psz_desc;
    return ((void*)0);
}
