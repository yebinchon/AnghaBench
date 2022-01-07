
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum js_OpCode { ____Placeholder_js_OpCode } js_OpCode ;


 int nelem (char const**) ;
 char const** opname ;

const char *jsC_opcodestring(enum js_OpCode opcode)
{
 if (opcode < nelem(opname)-1)
  return opname[opcode];
 return "<unknown>";
}
