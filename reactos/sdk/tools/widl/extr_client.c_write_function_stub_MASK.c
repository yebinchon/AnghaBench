#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_22__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {unsigned int name; int /*<<< orphan*/  type; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ var_t ;
struct TYPE_26__ {char* name; } ;
typedef  TYPE_2__ type_t ;
struct TYPE_25__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_BROADCAST ; 
 int /*<<< orphan*/  ATTR_CONTEXTHANDLE ; 
 int /*<<< orphan*/  ATTR_IDEMPOTENT ; 
 int /*<<< orphan*/  ATTR_IN ; 
 int /*<<< orphan*/  ATTR_OUT ; 
 int /*<<< orphan*/  FALSE ; 
#define  FC_BIND_CONTEXT 130 
#define  FC_BIND_GENERIC 129 
#define  FC_BIND_PRIMITIVE 128 
 int /*<<< orphan*/  PASS_IN ; 
 int /*<<< orphan*/  PASS_OUT ; 
 int /*<<< orphan*/  PASS_RETURN ; 
 int /*<<< orphan*/  PHASE_BUFFERSIZE ; 
 int /*<<< orphan*/  PHASE_MARSHAL ; 
 int /*<<< orphan*/  PHASE_UNMARSHAL ; 
 int /*<<< orphan*/  client ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_22__* FUNC2 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC3 (TYPE_2__ const*,TYPE_1__ const*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  indent ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__ const*) ; 
 scalar_t__ FUNC10 (TYPE_2__ const*,TYPE_1__ const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prefix_client ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_2__ const*,TYPE_1__ const*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC22( const type_t *iface, const var_t *func,
                                 int method_count, unsigned int proc_offset )
{
    unsigned char explicit_fc, implicit_fc;
    int has_full_pointer = FUNC9(func);
    var_t *retval = FUNC14(func->type);
    const var_t *handle_var = FUNC3( iface, func, &explicit_fc, &implicit_fc );
    int has_ret = !FUNC12(retval->type);

    if (FUNC10( iface, func ))
    {
        FUNC16( iface, func );
        FUNC15( client, iface, func, iface->name, proc_offset );
        return;
    }

    FUNC13( "struct __frame_%s%s\n{\n", prefix_client, FUNC4(func) );
    indent++;
    FUNC13( "__DECL_EXCEPTION_FRAME\n" );
    FUNC13("MIDL_STUB_MESSAGE _StubMsg;\n");
    if (handle_var)
    {
        if (explicit_fc == FC_BIND_GENERIC)
            FUNC13("%s %s;\n",
                         FUNC2(handle_var)->name, handle_var->name );
        FUNC13("RPC_BINDING_HANDLE _Handle;\n");
    }

    if (has_ret && FUNC0(retval->type))
    {
        FUNC13("void *_p_%s;\n", retval->name);
    }
    indent--;
    FUNC13( "};\n\n" );

    FUNC13( "static void __finally_%s%s(", prefix_client, FUNC4(func) );
    FUNC13( " struct __frame_%s%s *__frame )\n{\n", prefix_client, FUNC4(func) );
    indent++;

    if (has_full_pointer)
        FUNC17(client, indent, func);

    FUNC13("NdrFreeBuffer(&__frame->_StubMsg);\n");

    if (explicit_fc == FC_BIND_GENERIC)
    {
        FUNC1(client, "\n");
        FUNC13("if (__frame->_Handle)\n");
        indent++;
        FUNC13("%s_unbind(__frame->%s, __frame->_Handle);\n",
                     FUNC2(handle_var)->name, handle_var->name);
        indent--;
    }
    indent--;
    FUNC13( "}\n\n" );

    FUNC16( iface, func );

    /* write the functions body */
    FUNC1(client, "{\n");
    indent++;
    FUNC13( "struct __frame_%s%s __f, * const __frame = &__f;\n", prefix_client, FUNC4(func) );

    /* declare return value */
    if (has_ret)
    {
        FUNC13("%s", "");
        FUNC21(client, retval->type, retval->name);
        FUNC1(client, ";\n");
    }
    FUNC13("RPC_MESSAGE _RpcMessage;\n");

    if (handle_var)
    {
        FUNC13( "__frame->_Handle = 0;\n" );
        if (explicit_fc == FC_BIND_GENERIC)
            FUNC13("__frame->%s = %s;\n", handle_var->name, handle_var->name );
    }
    if (has_ret && FUNC0(retval->type))
    {
        FUNC13("__frame->_p_%s = &%s;\n", retval->name, retval->name);
    }
    FUNC1(client, "\n");

    FUNC13( "RpcExceptionInit( 0, __finally_%s%s );\n", prefix_client, FUNC4(func) );

    if (has_full_pointer)
        FUNC18(client, indent, func, FALSE);

    /* check pointers */
    FUNC19( client, indent, func );

    FUNC13("RpcTryFinally\n");
    FUNC13("{\n");
    indent++;

    FUNC13("NdrClientInitializeNew(&_RpcMessage, &__frame->_StubMsg, &%s_StubDesc, %d);\n",
                 iface->name, method_count);

    if (FUNC8(func->attrs, ATTR_IDEMPOTENT) || FUNC8(func->attrs, ATTR_BROADCAST))
    {
        FUNC13("_RpcMessage.RpcFlags = ( RPC_NCA_FLAGS_DEFAULT ");
        if (FUNC8(func->attrs, ATTR_IDEMPOTENT))
            FUNC1(client, "| RPC_NCA_FLAGS_IDEMPOTENT ");
        if (FUNC8(func->attrs, ATTR_BROADCAST))
            FUNC1(client, "| RPC_NCA_FLAGS_BROADCAST ");
        FUNC1(client, ");\n\n");
    }

    switch (explicit_fc)
    {
    case FC_BIND_PRIMITIVE:
        FUNC13("__frame->_Handle = %s;\n", handle_var->name);
        FUNC1(client, "\n");
        break;
    case FC_BIND_GENERIC:
        FUNC13("__frame->_Handle = %s_bind(%s);\n",
                     FUNC2(handle_var)->name, handle_var->name);
        FUNC1(client, "\n");
        break;
    case FC_BIND_CONTEXT:
    {
        /* if the context_handle attribute appears in the chain of types
         * without pointers being followed, then the context handle must
         * be direct, otherwise it is a pointer */
        int is_ch_ptr = !FUNC6(handle_var->type, ATTR_CONTEXTHANDLE);
        FUNC13("if (%s%s != 0)\n", is_ch_ptr ? "*" : "", handle_var->name);
        indent++;
        FUNC13("__frame->_Handle = NDRCContextBinding(%s%s);\n",
                     is_ch_ptr ? "*" : "", handle_var->name);
        indent--;
        if (FUNC8(handle_var->attrs, ATTR_IN) && !FUNC8(handle_var->attrs, ATTR_OUT))
        {
            FUNC13("else\n");
            indent++;
            FUNC13("RpcRaiseException(RPC_X_SS_IN_NULL_CONTEXT);\n");
            indent--;
        }
        FUNC1(client, "\n");
        break;
    }
    case 0:  /* implicit handle */
        if (handle_var)
        {
            FUNC13("__frame->_Handle = %s;\n", handle_var->name);
            FUNC1(client, "\n");
        }
        break;
    }

    FUNC20(client, indent, func, "", PASS_IN, PHASE_BUFFERSIZE);

    FUNC13("NdrGetBuffer(&__frame->_StubMsg, __frame->_StubMsg.BufferLength, ");
    if (handle_var)
        FUNC1(client, "__frame->_Handle);\n\n");
    else
        FUNC1(client,"%s__MIDL_AutoBindHandle);\n\n", iface->name);

    /* marshal arguments */
    FUNC20(client, indent, func, "", PASS_IN, PHASE_MARSHAL);

    /* send/receive message */
    /* print_client("NdrNsSendReceive(\n"); */
    /* print_client("(unsigned char *)__frame->_StubMsg.Buffer,\n"); */
    /* print_client("(RPC_BINDING_HANDLE *) &%s__MIDL_AutoBindHandle);\n", iface->name); */
    FUNC13("NdrSendReceive(&__frame->_StubMsg, __frame->_StubMsg.Buffer);\n\n");

    FUNC13("__frame->_StubMsg.BufferStart = _RpcMessage.Buffer;\n");
    FUNC13("__frame->_StubMsg.BufferEnd = __frame->_StubMsg.BufferStart + _RpcMessage.BufferLength;\n");

    if (FUNC5(func))
    {
        FUNC1(client, "\n");

        FUNC13("if ((_RpcMessage.DataRepresentation & 0x0000FFFFUL) != NDR_LOCAL_DATA_REPRESENTATION)\n");
        indent++;
        FUNC13("NdrConvert(&__frame->_StubMsg, (PFORMAT_STRING)&__MIDL_ProcFormatString.Format[%u]);\n",
                     proc_offset);
        indent--;
    }

    /* unmarshall arguments */
    FUNC1(client, "\n");
    FUNC20(client, indent, func, "", PASS_OUT, PHASE_UNMARSHAL);

    /* unmarshal return value */
    if (has_ret)
    {
        if (FUNC0(retval->type))
            FUNC13("MIDL_memset(&%s, 0, sizeof(%s));\n", retval->name, retval->name);
        else if (FUNC11(retval->type) || FUNC7(retval->type))
            FUNC13("%s = 0;\n", retval->name);
        FUNC20(client, indent, func, "", PASS_RETURN, PHASE_UNMARSHAL);
    }

    indent--;
    FUNC13("}\n");
    FUNC13("RpcFinally\n");
    FUNC13("{\n");
    indent++;
    FUNC13( "__finally_%s%s( __frame );\n", prefix_client, FUNC4(func) );
    indent--;
    FUNC13("}\n");
    FUNC13("RpcEndFinally\n");


    /* emit return code */
    if (has_ret)
    {
        FUNC1(client, "\n");
        FUNC13("return %s;\n", retval->name);
    }

    indent--;
    FUNC1(client, "}\n");
    FUNC1(client, "\n");
}