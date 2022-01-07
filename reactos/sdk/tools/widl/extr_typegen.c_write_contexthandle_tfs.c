
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int attr_list_t ;
typedef int FILE ;


 int FC_BIND_CONTEXT ;
 int FC_RP ;
 unsigned char NDR_CONTEXT_HANDLE_CANNOT_BE_NULL ;
 unsigned char NDR_CONTEXT_HANDLE_NOSERIALIZE ;
 unsigned char NDR_CONTEXT_HANDLE_SERIALIZE ;
 unsigned char NDR_STRICT_CONTEXT_HANDLE ;
 int current_iface ;
 int get_context_handle_offset (int *) ;
 unsigned char get_contexthandle_flags (int ,int const*,int *) ;
 int get_pointer_fc (int *,int const*,int) ;
 int print_file (int *,int,char*,...) ;
 int print_start_tfs_comment (int *,int *,unsigned int) ;
 int string_of_type (int) ;
 int update_tfsoff (int *,unsigned int,int *) ;

__attribute__((used)) static unsigned int write_contexthandle_tfs(FILE *file,
                                            const attr_list_t *attrs,
                                            type_t *type,
                                            int toplevel_param,
                                            unsigned int *typeformat_offset)
{
    unsigned int start_offset = *typeformat_offset;
    unsigned char flags = get_contexthandle_flags( current_iface, attrs, type );

    print_start_tfs_comment(file, type, start_offset);

    if (flags & 0x80)
    {
        int pointer_type = get_pointer_fc( type, attrs, toplevel_param );
        if (!pointer_type) pointer_type = FC_RP;
        *typeformat_offset += 4;
        print_file(file, 2,"0x%x, 0x0,\t/* %s */\n", pointer_type, string_of_type(pointer_type) );
        print_file(file, 2, "NdrFcShort(0x2),\t /* Offset= 2 (%u) */\n", *typeformat_offset);
        print_file(file, 0, "/* %2u */\n", *typeformat_offset);
    }

    print_file(file, 2, "0x%02x,\t/* FC_BIND_CONTEXT */\n", FC_BIND_CONTEXT);
    print_file(file, 2, "0x%x,\t/* Context flags: ", flags);

    if (((flags & 0x21) != 0x21) && (flags & NDR_CONTEXT_HANDLE_CANNOT_BE_NULL))
        print_file(file, 0, "can't be null, ");
    if (flags & NDR_CONTEXT_HANDLE_SERIALIZE)
        print_file(file, 0, "serialize, ");
    if (flags & NDR_CONTEXT_HANDLE_NOSERIALIZE)
        print_file(file, 0, "no serialize, ");
    if (flags & NDR_STRICT_CONTEXT_HANDLE)
        print_file(file, 0, "strict, ");
    if ((flags & 0x21) == 0x20)
        print_file(file, 0, "out, ");
    if ((flags & 0x21) == 0x21)
        print_file(file, 0, "return, ");
    if (flags & 0x40)
        print_file(file, 0, "in, ");
    if (flags & 0x80)
        print_file(file, 0, "via ptr, ");
    print_file(file, 0, "*/\n");
    print_file(file, 2, "0x%x,\t/* rundown routine */\n", get_context_handle_offset( type ));
    print_file(file, 2, "0, /* FIXME: param num */\n");
    *typeformat_offset += 4;

    update_tfsoff( type, start_offset, file );
    return start_offset;
}
