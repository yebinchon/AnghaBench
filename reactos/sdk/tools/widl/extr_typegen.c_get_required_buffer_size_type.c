
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int attr_list_t ;


 int FALSE ;
 int FC_RP ;



 int FC_STRUCT ;





 int TDT_IGNORE_RANGES ;






 int assert (unsigned int) ;
 int error (char*,int ) ;
 unsigned int fields_memsize (int ,unsigned int*) ;
 int get_array_fc (int const*) ;
 int get_basic_fc (int const*) ;
 int get_enum_fc (int const*) ;
 int get_pointer_fc (int const*,int const*,int) ;
 int get_struct_fc (int const*) ;
 int * get_user_type (int const*,char const**) ;
 int is_string_type (int const*,int const*) ;
 unsigned int pointer_size ;
 unsigned int type_array_get_dim (int const*) ;
 int * type_array_get_element (int const*) ;
 int * type_pointer_get_ref (int const*) ;
 int type_struct_get_fields (int const*) ;
 int typegen_detect_type (int const*,int *,int ) ;

__attribute__((used)) static unsigned int get_required_buffer_size_type(
    const type_t *type, const char *name, const attr_list_t *attrs, int toplevel_param, unsigned int *alignment)
{
    *alignment = 0;
    switch (typegen_detect_type(type, ((void*)0), TDT_IGNORE_RANGES))
    {
    case 128:
    {
        const char *uname = ((void*)0);
        const type_t *utype = get_user_type(type, &uname);
        return get_required_buffer_size_type(utype, uname, ((void*)0), FALSE, alignment);
    }
    case 132:
        switch (get_basic_fc(type))
        {
        case 153:
        case 152:
        case 135:
        case 140:
            *alignment = 4;
            return 1;

        case 134:
        case 136:
        case 141:
            *alignment = 4;
            return 2;

        case 137:
        case 142:
        case 147:
        case 148:
            *alignment = 4;
            return 4;

        case 146:
        case 151:
            *alignment = 8;
            return 8;

        case 144:
        case 138:
            assert( pointer_size );
            *alignment = pointer_size;
            return pointer_size;

        case 145:
        case 154:
            return 0;

        default:
            error("get_required_buffer_size: unknown basic type 0x%02x\n",
                  get_basic_fc(type));
            return 0;
        }
        break;

    case 131:
        switch (get_enum_fc(type))
        {
        case 149:
            *alignment = 4;
            return 4;
        case 150:
            *alignment = 4;
            return 2;
        }
        break;

    case 129:
        if (get_struct_fc(type) == FC_STRUCT)
        {
            if (!type_struct_get_fields(type)) return 0;
            return fields_memsize(type_struct_get_fields(type), alignment);
        }
        break;

    case 130:
        {
            unsigned int size, align;
            const type_t *ref = type_pointer_get_ref(type);
            if (is_string_type( attrs, ref )) break;
            if (!(size = get_required_buffer_size_type( ref, name, ((void*)0), FALSE, &align ))) break;
            if (get_pointer_fc(type, attrs, toplevel_param) != FC_RP)
            {
                size += 4 + align;
                align = 4;
            }
            *alignment = align;
            return size;
        }

    case 133:
        if (get_pointer_fc(type, attrs, toplevel_param) == FC_RP)
        {
            switch (get_array_fc(type))
            {
            case 139:
            case 143:
                return type_array_get_dim(type) *
                    get_required_buffer_size_type(type_array_get_element(type), name,
                                                  ((void*)0), FALSE, alignment);
            }
        }
        break;

    default:
        break;
    }
    return 0;
}
