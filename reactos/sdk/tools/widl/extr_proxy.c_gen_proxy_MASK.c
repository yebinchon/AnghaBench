#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_3__* type; int /*<<< orphan*/  name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ var_t ;
typedef  int /*<<< orphan*/  var_list_t ;
struct TYPE_25__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ type_t ;
struct TYPE_26__ {int /*<<< orphan*/  attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CALLCONV ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MODE_Oif ; 
 int /*<<< orphan*/  PASS_IN ; 
 int /*<<< orphan*/  PASS_OUT ; 
 int /*<<< orphan*/  PASS_RETURN ; 
 int /*<<< orphan*/  PHASE_BUFFERSIZE ; 
 int /*<<< orphan*/  PHASE_MARSHAL ; 
 int /*<<< orphan*/  PHASE_UNMARSHAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ indent ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__ const*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__ const*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__ const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC24(type_t *iface, const var_t *func, int idx,
                      unsigned int proc_offset)
{
  var_t *retval = FUNC14(func->type);
  int has_ret = !FUNC11(retval->type);
  int has_full_pointer = FUNC8(func);
  const char *callconv = FUNC3(func->type->attrs, ATTR_CALLCONV);
  const var_list_t *args = FUNC15(func->type);
  if (!callconv) callconv = "STDMETHODCALLTYPE";

  indent = 0;
  if (FUNC9( iface, func ))
  {
      if (FUNC5() == MODE_Oif && !FUNC7( func->attrs )) return;
      FUNC23(proxy, retval->type);
      FUNC12( " %s %s_%s_Proxy(\n", callconv, iface->name, FUNC4(func));
      FUNC16(proxy, args, iface->name, 1, TRUE);
      FUNC12( ")\n");
      FUNC17( proxy, iface, func, "Object", proc_offset );
      return;
  }
  FUNC12( "static void __finally_%s_%s_Proxy( struct __proxy_frame *__frame )\n",
               iface->name, FUNC4(func) );
  FUNC12( "{\n");
  indent++;
  if (has_full_pointer) FUNC18(proxy, indent, func);
  FUNC12( "NdrProxyFreeBuffer( __frame->This, &__frame->_StubMsg );\n" );
  indent--;
  FUNC12( "}\n");
  FUNC12( "\n");

  FUNC23(proxy, retval->type);
  FUNC12( " %s %s_%s_Proxy(\n", callconv, iface->name, FUNC4(func));
  FUNC16(proxy, args, iface->name, 1, TRUE);
  FUNC12( ")\n");
  FUNC12( "{\n");
  indent ++;
  FUNC12( "struct __proxy_frame __f, * const __frame = &__f;\n" );
  /* local variables */
  if (has_ret) {
    FUNC12( "%s", "" );
    FUNC22(proxy, retval->type, retval->name);
    FUNC2( proxy, ";\n" );
  }
  FUNC12( "RPC_MESSAGE _RpcMessage;\n" );
  if (has_ret) {
    if (FUNC1(retval->type))
        FUNC12("void *_p_%s = &%s;\n", retval->name, retval->name);
  }
  FUNC12( "\n");

  FUNC12( "RpcExceptionInit( __proxy_filter, __finally_%s_%s_Proxy );\n", iface->name, FUNC4(func) );
  FUNC12( "__frame->This = This;\n" );

  if (has_full_pointer)
    FUNC19(proxy, indent, func, FALSE);

  /* FIXME: trace */
  FUNC0( FUNC15(func->type) );

  FUNC12( "RpcTryExcept\n" );
  FUNC12( "{\n" );
  indent++;
  FUNC12( "NdrProxyInitialize(This, &_RpcMessage, &__frame->_StubMsg, &Object_StubDesc, %d);\n", idx);
  FUNC20( proxy, indent, func );

  FUNC12( "RpcTryFinally\n" );
  FUNC12( "{\n" );
  indent++;

  FUNC21(proxy, indent, func, "", PASS_IN, PHASE_BUFFERSIZE);

  FUNC12( "NdrProxyGetBuffer(This, &__frame->_StubMsg);\n" );

  FUNC21(proxy, indent, func, "", PASS_IN, PHASE_MARSHAL);

  FUNC12( "NdrProxySendReceive(This, &__frame->_StubMsg);\n" );
  FUNC2(proxy, "\n");
  FUNC12( "__frame->_StubMsg.BufferStart = _RpcMessage.Buffer;\n" );
  FUNC12( "__frame->_StubMsg.BufferEnd   = __frame->_StubMsg.BufferStart + _RpcMessage.BufferLength;\n\n" );

  FUNC12("if ((_RpcMessage.DataRepresentation & 0xffff) != NDR_LOCAL_DATA_REPRESENTATION)\n");
  indent++;
  FUNC12("NdrConvert( &__frame->_StubMsg, &__MIDL_ProcFormatString.Format[%u]);\n", proc_offset );
  indent--;
  FUNC2(proxy, "\n");

  FUNC21(proxy, indent, func, "", PASS_OUT, PHASE_UNMARSHAL);

  if (has_ret)
  {
      if (FUNC1(retval->type))
          FUNC12("MIDL_memset(&%s, 0, sizeof(%s));\n", retval->name, retval->name);
      else if (FUNC10(retval->type) || FUNC6(retval->type))
          FUNC12("%s = 0;\n", retval->name);
      FUNC21(proxy, indent, func, "", PASS_RETURN, PHASE_UNMARSHAL);
  }

  indent--;
  FUNC12( "}\n");
  FUNC12( "RpcFinally\n" );
  FUNC12( "{\n" );
  indent++;
  FUNC12( "__finally_%s_%s_Proxy( __frame );\n", iface->name, FUNC4(func) );
  indent--;
  FUNC12( "}\n");
  FUNC12( "RpcEndFinally\n" );
  indent--;
  FUNC12( "}\n" );
  FUNC12( "RpcExcept(__frame->_StubMsg.dwStubPhase != PROXY_SENDRECEIVE)\n" );
  FUNC12( "{\n" );
  if (has_ret) {
    indent++;
    FUNC13( FUNC15(func->type), "" );
    FUNC12( "_RetVal = NdrProxyErrorHandler(RpcExceptionCode());\n" );
    indent--;
  }
  FUNC12( "}\n" );
  FUNC12( "RpcEndExcept\n" );

  if (has_ret) {
    FUNC12( "return _RetVal;\n" );
  }
  indent--;
  FUNC12( "}\n");
  FUNC12( "\n");
}