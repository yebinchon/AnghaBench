
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {TYPE_3__* type; int name; int attrs; } ;
typedef TYPE_1__ var_t ;
typedef int var_list_t ;
struct TYPE_25__ {int name; } ;
typedef TYPE_2__ type_t ;
struct TYPE_26__ {int attrs; } ;


 int ATTR_CALLCONV ;
 int FALSE ;
 scalar_t__ MODE_Oif ;
 int PASS_IN ;
 int PASS_OUT ;
 int PASS_RETURN ;
 int PHASE_BUFFERSIZE ;
 int PHASE_MARSHAL ;
 int PHASE_UNMARSHAL ;
 int TRUE ;
 int clear_output_vars (int *) ;
 scalar_t__ decl_indirect (TYPE_3__*) ;
 int fprintf (int ,char*) ;
 char* get_attrp (int ,int ) ;
 int get_name (TYPE_1__ const*) ;
 scalar_t__ get_stub_mode () ;
 scalar_t__ indent ;
 scalar_t__ is_array (TYPE_3__*) ;
 int is_callas (int ) ;
 int is_full_pointer_function (TYPE_1__ const*) ;
 scalar_t__ is_interpreted_func (TYPE_2__*,TYPE_1__ const*) ;
 scalar_t__ is_ptr (TYPE_3__*) ;
 int is_void (TYPE_3__*) ;
 int print_proxy (char*,...) ;
 int proxy ;
 int proxy_free_variables (int *,char*) ;
 TYPE_1__* type_function_get_retval (TYPE_3__*) ;
 int * type_get_function_args (TYPE_3__*) ;
 int write_args (int ,int const*,int ,int,int ) ;
 int write_client_call_routine (int ,TYPE_2__*,TYPE_1__ const*,char*,unsigned int) ;
 int write_full_pointer_free (int ,scalar_t__,TYPE_1__ const*) ;
 int write_full_pointer_init (int ,scalar_t__,TYPE_1__ const*,int ) ;
 int write_pointer_checks (int ,scalar_t__,TYPE_1__ const*) ;
 int write_remoting_arguments (int ,scalar_t__,TYPE_1__ const*,char*,int ,int ) ;
 int write_type_decl (int ,TYPE_3__*,int ) ;
 int write_type_decl_left (int ,TYPE_3__*) ;

__attribute__((used)) static void gen_proxy(type_t *iface, const var_t *func, int idx,
                      unsigned int proc_offset)
{
  var_t *retval = type_function_get_retval(func->type);
  int has_ret = !is_void(retval->type);
  int has_full_pointer = is_full_pointer_function(func);
  const char *callconv = get_attrp(func->type->attrs, ATTR_CALLCONV);
  const var_list_t *args = type_get_function_args(func->type);
  if (!callconv) callconv = "STDMETHODCALLTYPE";

  indent = 0;
  if (is_interpreted_func( iface, func ))
  {
      if (get_stub_mode() == MODE_Oif && !is_callas( func->attrs )) return;
      write_type_decl_left(proxy, retval->type);
      print_proxy( " %s %s_%s_Proxy(\n", callconv, iface->name, get_name(func));
      write_args(proxy, args, iface->name, 1, TRUE);
      print_proxy( ")\n");
      write_client_call_routine( proxy, iface, func, "Object", proc_offset );
      return;
  }
  print_proxy( "static void __finally_%s_%s_Proxy( struct __proxy_frame *__frame )\n",
               iface->name, get_name(func) );
  print_proxy( "{\n");
  indent++;
  if (has_full_pointer) write_full_pointer_free(proxy, indent, func);
  print_proxy( "NdrProxyFreeBuffer( __frame->This, &__frame->_StubMsg );\n" );
  indent--;
  print_proxy( "}\n");
  print_proxy( "\n");

  write_type_decl_left(proxy, retval->type);
  print_proxy( " %s %s_%s_Proxy(\n", callconv, iface->name, get_name(func));
  write_args(proxy, args, iface->name, 1, TRUE);
  print_proxy( ")\n");
  print_proxy( "{\n");
  indent ++;
  print_proxy( "struct __proxy_frame __f, * const __frame = &__f;\n" );

  if (has_ret) {
    print_proxy( "%s", "" );
    write_type_decl(proxy, retval->type, retval->name);
    fprintf( proxy, ";\n" );
  }
  print_proxy( "RPC_MESSAGE _RpcMessage;\n" );
  if (has_ret) {
    if (decl_indirect(retval->type))
        print_proxy("void *_p_%s = &%s;\n", retval->name, retval->name);
  }
  print_proxy( "\n");

  print_proxy( "RpcExceptionInit( __proxy_filter, __finally_%s_%s_Proxy );\n", iface->name, get_name(func) );
  print_proxy( "__frame->This = This;\n" );

  if (has_full_pointer)
    write_full_pointer_init(proxy, indent, func, FALSE);


  clear_output_vars( type_get_function_args(func->type) );

  print_proxy( "RpcTryExcept\n" );
  print_proxy( "{\n" );
  indent++;
  print_proxy( "NdrProxyInitialize(This, &_RpcMessage, &__frame->_StubMsg, &Object_StubDesc, %d);\n", idx);
  write_pointer_checks( proxy, indent, func );

  print_proxy( "RpcTryFinally\n" );
  print_proxy( "{\n" );
  indent++;

  write_remoting_arguments(proxy, indent, func, "", PASS_IN, PHASE_BUFFERSIZE);

  print_proxy( "NdrProxyGetBuffer(This, &__frame->_StubMsg);\n" );

  write_remoting_arguments(proxy, indent, func, "", PASS_IN, PHASE_MARSHAL);

  print_proxy( "NdrProxySendReceive(This, &__frame->_StubMsg);\n" );
  fprintf(proxy, "\n");
  print_proxy( "__frame->_StubMsg.BufferStart = _RpcMessage.Buffer;\n" );
  print_proxy( "__frame->_StubMsg.BufferEnd   = __frame->_StubMsg.BufferStart + _RpcMessage.BufferLength;\n\n" );

  print_proxy("if ((_RpcMessage.DataRepresentation & 0xffff) != NDR_LOCAL_DATA_REPRESENTATION)\n");
  indent++;
  print_proxy("NdrConvert( &__frame->_StubMsg, &__MIDL_ProcFormatString.Format[%u]);\n", proc_offset );
  indent--;
  fprintf(proxy, "\n");

  write_remoting_arguments(proxy, indent, func, "", PASS_OUT, PHASE_UNMARSHAL);

  if (has_ret)
  {
      if (decl_indirect(retval->type))
          print_proxy("MIDL_memset(&%s, 0, sizeof(%s));\n", retval->name, retval->name);
      else if (is_ptr(retval->type) || is_array(retval->type))
          print_proxy("%s = 0;\n", retval->name);
      write_remoting_arguments(proxy, indent, func, "", PASS_RETURN, PHASE_UNMARSHAL);
  }

  indent--;
  print_proxy( "}\n");
  print_proxy( "RpcFinally\n" );
  print_proxy( "{\n" );
  indent++;
  print_proxy( "__finally_%s_%s_Proxy( __frame );\n", iface->name, get_name(func) );
  indent--;
  print_proxy( "}\n");
  print_proxy( "RpcEndFinally\n" );
  indent--;
  print_proxy( "}\n" );
  print_proxy( "RpcExcept(__frame->_StubMsg.dwStubPhase != PROXY_SENDRECEIVE)\n" );
  print_proxy( "{\n" );
  if (has_ret) {
    indent++;
    proxy_free_variables( type_get_function_args(func->type), "" );
    print_proxy( "_RetVal = NdrProxyErrorHandler(RpcExceptionCode());\n" );
    indent--;
  }
  print_proxy( "}\n" );
  print_proxy( "RpcEndExcept\n" );

  if (has_ret) {
    print_proxy( "return _RetVal;\n" );
  }
  indent--;
  print_proxy( "}\n");
  print_proxy( "\n");
}
