#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* iface; } ;
struct TYPE_9__ {char* name; TYPE_2__ details; } ;
typedef  TYPE_3__ type_t ;
typedef  int /*<<< orphan*/  statement_list_t ;
struct TYPE_7__ {TYPE_3__* async_iface; } ;

/* Variables and functions */
 scalar_t__ MODE_Oif ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_3__*,TYPE_3__ const**) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  header_name ; 
 int /*<<< orphan*/  indent ; 
 int /*<<< orphan*/  need_proxy ; 
 int /*<<< orphan*/  need_proxy_and_inline_stubs ; 
 int pointer_size ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  proxy ; 
 char* proxy_token ; 
 TYPE_3__** FUNC5 (int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(const statement_list_t *stmts)
{
  int expr_eval_routines;
  unsigned int proc_offset = 0;
  char *file_id = proxy_token;
  int i, count, have_baseiid = 0;
  unsigned int table_version;
  type_t **interfaces;
  const type_t * delegate_to;

  FUNC4( "#ifndef __REDQ_RPCPROXY_H_VERSION__\n");
  FUNC4( "#define __REQUIRED_RPCPROXY_H_VERSION__ %u\n", FUNC3() == MODE_Oif ? 475 : 440);
  FUNC4( "#endif\n");
  FUNC4( "\n");
  if (FUNC3() == MODE_Oif) FUNC4( "#define USE_STUBLESS_PROXY\n");
  FUNC4( "#include \"rpcproxy.h\"\n");
  FUNC4( "#ifndef __RPCPROXY_H_VERSION__\n");
  FUNC4( "#error This code needs a newer version of rpcproxy.h\n");
  FUNC4( "#endif /* __RPCPROXY_H_VERSION__ */\n");
  FUNC4( "\n");
  FUNC4( "#include \"%s\"\n", header_name);
  FUNC4( "\n");

  if (FUNC0(stmts, need_proxy_and_inline_stubs))
  {
      FUNC6( proxy );
      FUNC4( "\n");
      FUNC4( "struct __proxy_frame\n");
      FUNC4( "{\n");
      FUNC4( "    __DECL_EXCEPTION_FRAME\n");
      FUNC4( "    MIDL_STUB_MESSAGE _StubMsg;\n");
      FUNC4( "    void             *This;\n");
      FUNC4( "};\n");
      FUNC4( "\n");
      FUNC4("static int __proxy_filter( struct __proxy_frame *__frame )\n");
      FUNC4( "{\n");
      FUNC4( "    return (__frame->_StubMsg.dwStubPhase != PROXY_SENDRECEIVE);\n");
      FUNC4( "}\n");
      FUNC4( "\n");
  }

  FUNC9(proxy, indent, stmts, need_proxy);
  FUNC13();
  FUNC11(stmts, &proc_offset);

  expr_eval_routines = FUNC8(proxy, proxy_token);
  if (expr_eval_routines)
      FUNC7(proxy, proxy_token);
  FUNC15(proxy);
  FUNC12(expr_eval_routines);

  FUNC4( "#if !defined(__RPC_WIN%u__)\n", pointer_size == 8 ? 64 : 32);
  FUNC4( "#error Invalid build platform for this proxy.\n");
  FUNC4( "#endif\n");
  FUNC4( "\n");
  FUNC10(proxy, stmts, need_proxy);
  FUNC14(proxy, stmts, need_proxy);

  interfaces = FUNC5(stmts, &count);
  FUNC1(proxy, "static const CInterfaceProxyVtbl* const _%s_ProxyVtblList[] =\n", file_id);
  FUNC1(proxy, "{\n");
  for (i = 0; i < count; i++)
      FUNC1(proxy, "    (const CInterfaceProxyVtbl*)&_%sProxyVtbl,\n", interfaces[i]->name);
  FUNC1(proxy, "    0\n");
  FUNC1(proxy, "};\n");
  FUNC1(proxy, "\n");

  FUNC1(proxy, "static const CInterfaceStubVtbl* const _%s_StubVtblList[] =\n", file_id);
  FUNC1(proxy, "{\n");
  for (i = 0; i < count; i++)
      FUNC1(proxy, "    &_%sStubVtbl,\n", interfaces[i]->name);
  FUNC1(proxy, "    0\n");
  FUNC1(proxy, "};\n");
  FUNC1(proxy, "\n");

  FUNC1(proxy, "static PCInterfaceName const _%s_InterfaceNamesList[] =\n", file_id);
  FUNC1(proxy, "{\n");
  for (i = 0; i < count; i++)
      FUNC1(proxy, "    \"%s\",\n", interfaces[i]->name);
  FUNC1(proxy, "    0\n");
  FUNC1(proxy, "};\n");
  FUNC1(proxy, "\n");

  for (i = 0; i < count; i++)
      if ((have_baseiid = FUNC2( interfaces[i], NULL ))) break;

  if (have_baseiid)
  {
      FUNC1(proxy, "static const IID * _%s_BaseIIDList[] =\n", file_id);
      FUNC1(proxy, "{\n");
      for (i = 0; i < count; i++)
      {
          if (FUNC2(interfaces[i], &delegate_to))
              FUNC1( proxy, "    &IID_%s,  /* %s */\n", delegate_to->name, interfaces[i]->name );
          else
              FUNC1( proxy, "    0,\n" );
      }
      FUNC1(proxy, "    0\n");
      FUNC1(proxy, "};\n");
      FUNC1(proxy, "\n");
  }

  FUNC1(proxy, "static int __stdcall _%s_IID_Lookup(const IID* pIID, int* pIndex)\n", file_id);
  FUNC1(proxy, "{\n");
  FUNC1(proxy, "    int low = 0, high = %d;\n", count - 1);
  FUNC1(proxy, "\n");
  FUNC1(proxy, "    while (low <= high)\n");
  FUNC1(proxy, "    {\n");
  FUNC1(proxy, "        int pos = (low + high) / 2;\n");
  FUNC1(proxy, "        int res = IID_GENERIC_CHECK_IID(_%s, pIID, pos);\n", file_id);
  FUNC1(proxy, "        if (!res) { *pIndex = pos; return 1; }\n");
  FUNC1(proxy, "        if (res > 0) low = pos + 1;\n");
  FUNC1(proxy, "        else high = pos - 1;\n");
  FUNC1(proxy, "    }\n");
  FUNC1(proxy, "    return 0;\n");
  FUNC1(proxy, "}\n");
  FUNC1(proxy, "\n");

  table_version = FUNC3() == MODE_Oif ? 2 : 1;
  for (i = 0; i < count; i++)
  {
      if (interfaces[i]->details.iface->async_iface != interfaces[i]) continue;
      if (table_version != 6)
      {
          FUNC1(proxy, "static const IID *_AsyncInterfaceTable[] =\n");
          FUNC1(proxy, "{\n");
          table_version = 6;
      }
      FUNC1(proxy, "    &IID_%s,\n", interfaces[i]->name);
      FUNC1(proxy, "    (IID*)(LONG_PTR)-1,\n");
  }
  if (table_version == 6)
  {
      FUNC1(proxy, "    0\n");
      FUNC1(proxy, "};\n");
      FUNC1(proxy, "\n");
  }

  FUNC1(proxy, "const ExtendedProxyFileInfo %s_ProxyFileInfo DECLSPEC_HIDDEN =\n", file_id);
  FUNC1(proxy, "{\n");
  FUNC1(proxy, "    (const PCInterfaceProxyVtblList*)_%s_ProxyVtblList,\n", file_id);
  FUNC1(proxy, "    (const PCInterfaceStubVtblList*)_%s_StubVtblList,\n", file_id);
  FUNC1(proxy, "    _%s_InterfaceNamesList,\n", file_id);
  if (have_baseiid) FUNC1(proxy, "    _%s_BaseIIDList,\n", file_id);
  else FUNC1(proxy, "    0,\n");
  FUNC1(proxy, "    _%s_IID_Lookup,\n", file_id);
  FUNC1(proxy, "    %d,\n", count);
  FUNC1(proxy, "    %u,\n", table_version);
  FUNC1(proxy, "    %s,\n", table_version == 6 ? "_AsyncInterfaceTable" : "0");
  FUNC1(proxy, "    0,\n");
  FUNC1(proxy, "    0,\n");
  FUNC1(proxy, "    0\n");
  FUNC1(proxy, "};\n");
}