
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {unsigned int typestring_offset; int * attrs; TYPE_4__ const* type; } ;
typedef TYPE_3__ var_t ;
struct TYPE_21__ {int ptr_tfsoff; } ;
struct TYPE_22__ {TYPE_1__ array; } ;
struct TYPE_24__ {unsigned int typestring_offset; TYPE_2__ details; } ;
typedef TYPE_4__ type_t ;


 int ATTR_IN ;
 int ATTR_OUT ;
 unsigned char FC_BIND_PRIMITIVE ;

 unsigned char FC_ENUM32 ;
 unsigned char FC_LONG ;

 int FC_RP ;

 unsigned short IsBasetype ;
 unsigned short IsByValue ;
 unsigned short IsIn ;
 unsigned short IsOut ;
 unsigned short IsReturn ;
 unsigned short IsSimpleRef ;
 unsigned short MustFree ;
 unsigned short MustSize ;
 int TDT_ALL_TYPES ;
 int TRUE ;
 int assert (int ) ;
 unsigned char get_basic_fc (TYPE_4__ const*) ;
 unsigned char get_basic_fc_signed (TYPE_4__ const*) ;
 unsigned char get_enum_fc (TYPE_4__ const*) ;
 int get_pointer_fc (TYPE_4__ const*,int *,int) ;
 unsigned int get_required_buffer_size_type (TYPE_4__ const*,int *,int *,int,unsigned int*) ;
 unsigned int get_stack_size (TYPE_3__ const*,int*) ;
 int get_struct_fc (TYPE_4__ const*) ;
 int is_attr (int *,int ) ;
 int is_conformant_array (TYPE_4__ const*) ;
 int is_declptr (TYPE_4__ const*) ;
 int is_string_type (int *,TYPE_4__ const*) ;
 unsigned int pointer_size ;
 int type_array_is_decl_as_ptr (TYPE_4__ const*) ;
 unsigned int type_memsize (TYPE_4__ const*) ;
 TYPE_4__* type_pointer_get_ref (TYPE_4__ const*) ;
 int typegen_detect_type (TYPE_4__ const*,int *,int ) ;

__attribute__((used)) static unsigned char get_parameter_fc( const var_t *var, int is_return, unsigned short *flags,
                                       unsigned int *stack_size, unsigned int *typestring_offset )
{
    unsigned int alignment, server_size = 0, buffer_size = 0;
    unsigned char fc = 0;
    int is_byval;
    int is_in = is_attr(var->attrs, ATTR_IN);
    int is_out = is_attr(var->attrs, ATTR_OUT);

    if (is_return) is_out = TRUE;
    else if (!is_in && !is_out) is_in = TRUE;

    *flags = 0;
    *stack_size = get_stack_size( var, &is_byval );
    *typestring_offset = var->typestring_offset;

    if (is_in) *flags |= IsIn;
    if (is_out) *flags |= IsOut;
    if (is_return) *flags |= IsReturn;

    if (!is_string_type( var->attrs, var->type ))
        buffer_size = get_required_buffer_size_type( var->type, ((void*)0), var->attrs, TRUE, &alignment );

    switch (typegen_detect_type( var->type, var->attrs, TDT_ALL_TYPES ))
    {
    case 139:
        *flags |= IsBasetype;
        fc = get_basic_fc_signed( var->type );
        if (fc == FC_BIND_PRIMITIVE)
        {
            buffer_size = 4;
            fc = FC_LONG;
        }
        break;
    case 136:
        *flags |= IsBasetype;
        fc = get_enum_fc( var->type );
        break;
    case 132:
        *flags |= IsByValue;
        break;
    case 130:
    case 129:
    case 128:
        *flags |= MustFree | (is_byval ? IsByValue : IsSimpleRef);
        break;
    case 135:
        *flags |= MustFree;
        break;
    case 140:
        *flags |= MustFree;
        if (type_array_is_decl_as_ptr(var->type) && var->type->details.array.ptr_tfsoff &&
            get_pointer_fc( var->type, var->attrs, !is_return ) == FC_RP)
        {
            *typestring_offset = var->type->typestring_offset;
            *flags |= IsSimpleRef;
        }
        break;
    case 131:
        *flags |= MustFree;
        if (is_declptr( var->type ) && get_pointer_fc( var->type, var->attrs, !is_return ) == FC_RP)
        {

            if (is_conformant_array( var->type )) *typestring_offset += 4;
            else *typestring_offset += 2;
            *flags |= IsSimpleRef;
        }
        break;
    case 137:
        *flags |= IsSimpleRef;
        *typestring_offset += 4;

    case 138:
        buffer_size = 20;
        break;
    case 133:
        if (get_pointer_fc( var->type, var->attrs, !is_return ) == FC_RP)
        {
            const type_t *ref = type_pointer_get_ref( var->type );

            if (!is_string_type( var->attrs, ref ))
                buffer_size = get_required_buffer_size_type( ref, ((void*)0), ((void*)0), TRUE, &alignment );

            switch (typegen_detect_type( ref, ((void*)0), TDT_ALL_TYPES ))
            {
            case 139:
                *flags |= IsSimpleRef | IsBasetype;
                fc = get_basic_fc( ref );
                if (!is_in && is_out) server_size = pointer_size;
                break;
            case 136:
                if ((fc = get_enum_fc( ref )) == FC_ENUM32)
                {
                    *flags |= IsSimpleRef | IsBasetype;
                    if (!is_in && is_out) server_size = pointer_size;
                }
                else
                {
                    server_size = pointer_size;
                }
                break;
            case 129:
            case 128:
            case 132:
            case 140:
                *flags |= IsSimpleRef | MustFree;
                *typestring_offset = ref->typestring_offset;
                if (!is_in && is_out) server_size = type_memsize( ref );
                break;
            case 131:
            case 133:
            case 138:
            case 137:
                *flags |= MustFree;
                server_size = pointer_size;
                break;
            case 135:
                *flags |= MustFree;
                if (is_in && is_out) server_size = pointer_size;
                break;
            case 130:
                *flags |= IsSimpleRef | MustFree;
                *typestring_offset = ref->typestring_offset;
                switch (get_struct_fc(ref))
                {
                case 141:
                case 142:
                case 143:
                    if (!is_in && is_out) server_size = type_memsize( ref );
                    break;
                default:
                    break;
                }
                break;
            case 134:
                assert(0);
            }
        }
        else
        {
            *flags |= MustFree;
        }
        break;
    case 134:
        assert(0);
    }

    if (!buffer_size) *flags |= MustSize;

    if (server_size)
    {
        server_size = (server_size + 7) / 8;
        if (server_size < 8) *flags |= server_size << 13;
    }
    return fc;
}
