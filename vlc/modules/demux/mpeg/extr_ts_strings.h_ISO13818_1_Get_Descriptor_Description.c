
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 char const** ISO13818_1_descriptors_descs ;
 char const** ISO13818_1_other_descs ;

__attribute__((used)) static const char *ISO13818_1_Get_Descriptor_Description(uint8_t i_desc)
{
    if( i_desc < 0x36 )
        return ISO13818_1_descriptors_descs[i_desc];
    else
        return ISO13818_1_other_descs[1];
}
