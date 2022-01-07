
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MODE_Oif ;
 scalar_t__ get_stub_mode () ;
 int indent ;
 scalar_t__ list_empty (int *) ;
 int print_proxy (char*,...) ;
 int user_type_list ;

__attribute__((used)) static void write_stubdesc(int expr_eval_routines)
{
  print_proxy( "static const MIDL_STUB_DESC Object_StubDesc =\n{\n");
  indent++;
  print_proxy( "0,\n");
  print_proxy( "NdrOleAllocate,\n");
  print_proxy( "NdrOleFree,\n");
  print_proxy( "{0}, 0, 0, %s, 0,\n", expr_eval_routines ? "ExprEvalRoutines" : "0");
  print_proxy( "__MIDL_TypeFormatString.Format,\n");
  print_proxy( "1, /* -error bounds_check flag */\n");
  print_proxy( "0x%x, /* Ndr library version */\n", get_stub_mode() == MODE_Oif ? 0x50002 : 0x10001);
  print_proxy( "0,\n");
  print_proxy( "0x50100a4, /* MIDL Version 5.1.164 */\n");
  print_proxy( "0,\n");
  print_proxy("%s,\n", list_empty(&user_type_list) ? "0" : "UserMarshalRoutines");
  print_proxy( "0,  /* notify & notify_flag routine table */\n");
  print_proxy( "1,  /* Flags */\n");
  print_proxy( "0,  /* Reserved3 */\n");
  print_proxy( "0,  /* Reserved4 */\n");
  print_proxy( "0   /* Reserved5 */\n");
  indent--;
  print_proxy( "};\n");
  print_proxy( "\n");
}
