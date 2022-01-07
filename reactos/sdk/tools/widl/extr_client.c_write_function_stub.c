
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_22__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {unsigned int name; int type; int attrs; } ;
typedef TYPE_1__ var_t ;
struct TYPE_26__ {char* name; } ;
typedef TYPE_2__ type_t ;
struct TYPE_25__ {int name; } ;


 int ATTR_BROADCAST ;
 int ATTR_CONTEXTHANDLE ;
 int ATTR_IDEMPOTENT ;
 int ATTR_IN ;
 int ATTR_OUT ;
 int FALSE ;



 int PASS_IN ;
 int PASS_OUT ;
 int PASS_RETURN ;
 int PHASE_BUFFERSIZE ;
 int PHASE_MARSHAL ;
 int PHASE_UNMARSHAL ;
 int client ;
 scalar_t__ decl_indirect (int ) ;
 int fprintf (int ,char*,...) ;
 TYPE_22__* get_explicit_generic_handle_type (TYPE_1__ const*) ;
 TYPE_1__* get_func_handle_var (TYPE_2__ const*,TYPE_1__ const*,unsigned char*,unsigned char*) ;
 int get_name (TYPE_1__ const*) ;
 scalar_t__ has_out_arg_or_return (TYPE_1__ const*) ;
 int indent ;
 int is_aliaschain_attr (int ,int ) ;
 scalar_t__ is_array (int ) ;
 scalar_t__ is_attr (int ,int ) ;
 int is_full_pointer_function (TYPE_1__ const*) ;
 scalar_t__ is_interpreted_func (TYPE_2__ const*,TYPE_1__ const*) ;
 scalar_t__ is_ptr (int ) ;
 int is_void (int ) ;
 int prefix_client ;
 int print_client (char*,...) ;
 TYPE_1__* type_function_get_retval (int ) ;
 int write_client_call_routine (int ,TYPE_2__ const*,TYPE_1__ const*,char*,unsigned int) ;
 int write_client_func_decl (TYPE_2__ const*,TYPE_1__ const*) ;
 int write_full_pointer_free (int ,int ,TYPE_1__ const*) ;
 int write_full_pointer_init (int ,int ,TYPE_1__ const*,int ) ;
 int write_pointer_checks (int ,int ,TYPE_1__ const*) ;
 int write_remoting_arguments (int ,int ,TYPE_1__ const*,char*,int ,int ) ;
 int write_type_decl (int ,int ,unsigned int) ;

__attribute__((used)) static void write_function_stub( const type_t *iface, const var_t *func,
                                 int method_count, unsigned int proc_offset )
{
    unsigned char explicit_fc, implicit_fc;
    int has_full_pointer = is_full_pointer_function(func);
    var_t *retval = type_function_get_retval(func->type);
    const var_t *handle_var = get_func_handle_var( iface, func, &explicit_fc, &implicit_fc );
    int has_ret = !is_void(retval->type);

    if (is_interpreted_func( iface, func ))
    {
        write_client_func_decl( iface, func );
        write_client_call_routine( client, iface, func, iface->name, proc_offset );
        return;
    }

    print_client( "struct __frame_%s%s\n{\n", prefix_client, get_name(func) );
    indent++;
    print_client( "__DECL_EXCEPTION_FRAME\n" );
    print_client("MIDL_STUB_MESSAGE _StubMsg;\n");
    if (handle_var)
    {
        if (explicit_fc == 129)
            print_client("%s %s;\n",
                         get_explicit_generic_handle_type(handle_var)->name, handle_var->name );
        print_client("RPC_BINDING_HANDLE _Handle;\n");
    }

    if (has_ret && decl_indirect(retval->type))
    {
        print_client("void *_p_%s;\n", retval->name);
    }
    indent--;
    print_client( "};\n\n" );

    print_client( "static void __finally_%s%s(", prefix_client, get_name(func) );
    print_client( " struct __frame_%s%s *__frame )\n{\n", prefix_client, get_name(func) );
    indent++;

    if (has_full_pointer)
        write_full_pointer_free(client, indent, func);

    print_client("NdrFreeBuffer(&__frame->_StubMsg);\n");

    if (explicit_fc == 129)
    {
        fprintf(client, "\n");
        print_client("if (__frame->_Handle)\n");
        indent++;
        print_client("%s_unbind(__frame->%s, __frame->_Handle);\n",
                     get_explicit_generic_handle_type(handle_var)->name, handle_var->name);
        indent--;
    }
    indent--;
    print_client( "}\n\n" );

    write_client_func_decl( iface, func );


    fprintf(client, "{\n");
    indent++;
    print_client( "struct __frame_%s%s __f, * const __frame = &__f;\n", prefix_client, get_name(func) );


    if (has_ret)
    {
        print_client("%s", "");
        write_type_decl(client, retval->type, retval->name);
        fprintf(client, ";\n");
    }
    print_client("RPC_MESSAGE _RpcMessage;\n");

    if (handle_var)
    {
        print_client( "__frame->_Handle = 0;\n" );
        if (explicit_fc == 129)
            print_client("__frame->%s = %s;\n", handle_var->name, handle_var->name );
    }
    if (has_ret && decl_indirect(retval->type))
    {
        print_client("__frame->_p_%s = &%s;\n", retval->name, retval->name);
    }
    fprintf(client, "\n");

    print_client( "RpcExceptionInit( 0, __finally_%s%s );\n", prefix_client, get_name(func) );

    if (has_full_pointer)
        write_full_pointer_init(client, indent, func, FALSE);


    write_pointer_checks( client, indent, func );

    print_client("RpcTryFinally\n");
    print_client("{\n");
    indent++;

    print_client("NdrClientInitializeNew(&_RpcMessage, &__frame->_StubMsg, &%s_StubDesc, %d);\n",
                 iface->name, method_count);

    if (is_attr(func->attrs, ATTR_IDEMPOTENT) || is_attr(func->attrs, ATTR_BROADCAST))
    {
        print_client("_RpcMessage.RpcFlags = ( RPC_NCA_FLAGS_DEFAULT ");
        if (is_attr(func->attrs, ATTR_IDEMPOTENT))
            fprintf(client, "| RPC_NCA_FLAGS_IDEMPOTENT ");
        if (is_attr(func->attrs, ATTR_BROADCAST))
            fprintf(client, "| RPC_NCA_FLAGS_BROADCAST ");
        fprintf(client, ");\n\n");
    }

    switch (explicit_fc)
    {
    case 128:
        print_client("__frame->_Handle = %s;\n", handle_var->name);
        fprintf(client, "\n");
        break;
    case 129:
        print_client("__frame->_Handle = %s_bind(%s);\n",
                     get_explicit_generic_handle_type(handle_var)->name, handle_var->name);
        fprintf(client, "\n");
        break;
    case 130:
    {



        int is_ch_ptr = !is_aliaschain_attr(handle_var->type, ATTR_CONTEXTHANDLE);
        print_client("if (%s%s != 0)\n", is_ch_ptr ? "*" : "", handle_var->name);
        indent++;
        print_client("__frame->_Handle = NDRCContextBinding(%s%s);\n",
                     is_ch_ptr ? "*" : "", handle_var->name);
        indent--;
        if (is_attr(handle_var->attrs, ATTR_IN) && !is_attr(handle_var->attrs, ATTR_OUT))
        {
            print_client("else\n");
            indent++;
            print_client("RpcRaiseException(RPC_X_SS_IN_NULL_CONTEXT);\n");
            indent--;
        }
        fprintf(client, "\n");
        break;
    }
    case 0:
        if (handle_var)
        {
            print_client("__frame->_Handle = %s;\n", handle_var->name);
            fprintf(client, "\n");
        }
        break;
    }

    write_remoting_arguments(client, indent, func, "", PASS_IN, PHASE_BUFFERSIZE);

    print_client("NdrGetBuffer(&__frame->_StubMsg, __frame->_StubMsg.BufferLength, ");
    if (handle_var)
        fprintf(client, "__frame->_Handle);\n\n");
    else
        fprintf(client,"%s__MIDL_AutoBindHandle);\n\n", iface->name);


    write_remoting_arguments(client, indent, func, "", PASS_IN, PHASE_MARSHAL);





    print_client("NdrSendReceive(&__frame->_StubMsg, __frame->_StubMsg.Buffer);\n\n");

    print_client("__frame->_StubMsg.BufferStart = _RpcMessage.Buffer;\n");
    print_client("__frame->_StubMsg.BufferEnd = __frame->_StubMsg.BufferStart + _RpcMessage.BufferLength;\n");

    if (has_out_arg_or_return(func))
    {
        fprintf(client, "\n");

        print_client("if ((_RpcMessage.DataRepresentation & 0x0000FFFFUL) != NDR_LOCAL_DATA_REPRESENTATION)\n");
        indent++;
        print_client("NdrConvert(&__frame->_StubMsg, (PFORMAT_STRING)&__MIDL_ProcFormatString.Format[%u]);\n",
                     proc_offset);
        indent--;
    }


    fprintf(client, "\n");
    write_remoting_arguments(client, indent, func, "", PASS_OUT, PHASE_UNMARSHAL);


    if (has_ret)
    {
        if (decl_indirect(retval->type))
            print_client("MIDL_memset(&%s, 0, sizeof(%s));\n", retval->name, retval->name);
        else if (is_ptr(retval->type) || is_array(retval->type))
            print_client("%s = 0;\n", retval->name);
        write_remoting_arguments(client, indent, func, "", PASS_RETURN, PHASE_UNMARSHAL);
    }

    indent--;
    print_client("}\n");
    print_client("RpcFinally\n");
    print_client("{\n");
    indent++;
    print_client( "__finally_%s%s( __frame );\n", prefix_client, get_name(func) );
    indent--;
    print_client("}\n");
    print_client("RpcEndFinally\n");



    if (has_ret)
    {
        fprintf(client, "\n");
        print_client("return %s;\n", retval->name);
    }

    indent--;
    fprintf(client, "}\n");
    fprintf(client, "\n");
}
