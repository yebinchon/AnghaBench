
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_proxy (char*) ;

__attribute__((used)) static void write_stubdescproto(void)
{
  print_proxy( "static const MIDL_STUB_DESC Object_StubDesc;\n");
  print_proxy( "\n");
}
