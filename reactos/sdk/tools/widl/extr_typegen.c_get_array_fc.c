
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int expr_t ;


 int FALSE ;
 unsigned char FC_BOGUS_ARRAY ;

 unsigned char FC_CARRAY ;
 unsigned char FC_CVARRAY ;
 int FC_ENUM16 ;
 unsigned char FC_LGFARRAY ;
 unsigned char FC_LGVARRAY ;
 int FC_RP ;
 unsigned char FC_SMFARRAY ;
 unsigned char FC_SMVARRAY ;
 int TDT_IGNORE_STRINGS ;
 int TYPE_BASIC_INT3264 ;
 int get_enum_fc (int const*) ;
 int get_pointer_fc (int const*,int *,int ) ;
 int get_struct_fc (int const*) ;
 int pointer_size ;
 int * type_array_get_conformance (int const*) ;
 unsigned int type_array_get_dim (int const*) ;
 int * type_array_get_element (int const*) ;
 scalar_t__ type_array_has_variance (int const*) ;
 int type_basic_get_type (int const*) ;
 unsigned int type_memsize (int const*) ;
 int typegen_detect_type (int const*,int *,int ) ;

__attribute__((used)) static unsigned char get_array_fc(const type_t *type)
{
    unsigned char fc;
    const expr_t *size_is;
    const type_t *elem_type;

    elem_type = type_array_get_element(type);
    size_is = type_array_get_conformance(type);

    if (!size_is)
    {
        unsigned int size = type_memsize(elem_type);
        if (size * type_array_get_dim(type) > 0xffffuL)
            fc = FC_LGFARRAY;
        else
            fc = FC_SMFARRAY;
    }
    else
        fc = FC_CARRAY;

    if (type_array_has_variance(type))
    {
        if (fc == FC_SMFARRAY)
            fc = FC_SMVARRAY;
        else if (fc == FC_LGFARRAY)
            fc = FC_LGVARRAY;
        else if (fc == FC_CARRAY)
            fc = FC_CVARRAY;
    }

    switch (typegen_detect_type(elem_type, ((void*)0), TDT_IGNORE_STRINGS))
    {
    case 128:
        fc = FC_BOGUS_ARRAY;
        break;
    case 139:
        if (type_basic_get_type(elem_type) == TYPE_BASIC_INT3264 &&
            pointer_size != 4)
            fc = FC_BOGUS_ARRAY;
        break;
    case 130:
        switch (get_struct_fc(elem_type))
        {
        case 141:
            fc = FC_BOGUS_ARRAY;
            break;
        }
        break;
    case 136:


        if (get_enum_fc(elem_type) == FC_ENUM16)
            fc = FC_BOGUS_ARRAY;
        break;
    case 129:
    case 135:
        fc = FC_BOGUS_ARRAY;
        break;
    case 133:



        if (get_pointer_fc(elem_type, ((void*)0), FALSE) == FC_RP || pointer_size != 4)
            fc = FC_BOGUS_ARRAY;
        break;
    case 132:
        fc = FC_BOGUS_ARRAY;
        break;
    case 138:
    case 137:
    case 131:
    case 134:
    case 140:

        break;
    }

    return fc;
}
