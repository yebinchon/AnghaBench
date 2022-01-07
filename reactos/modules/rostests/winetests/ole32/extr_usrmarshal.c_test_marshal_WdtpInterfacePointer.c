
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAKELONG (int ,int) ;
 int MSHCTX_DIFFERENTMACHINE ;
 int MSHCTX_INPROC ;
 int marshal_WdtpInterfacePointer (int ,int ,int,int,int) ;

__attribute__((used)) static void test_marshal_WdtpInterfacePointer(void)
{







    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_INPROC, 0,0,0);
    marshal_WdtpInterfacePointer(MSHCTX_DIFFERENTMACHINE, MSHCTX_INPROC,0,0,0);
    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MAKELONG(MSHCTX_INPROC, 0xffff),0,0,0);


    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,0,0,0);
    marshal_WdtpInterfacePointer(MSHCTX_DIFFERENTMACHINE, MSHCTX_DIFFERENTMACHINE,0,0,0);
    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MAKELONG(MSHCTX_DIFFERENTMACHINE, 0xffff),0,0,0);


    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,0,0,1);
    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,0,1,0);
    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,0,1,1);
    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,1,0,0);
    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,1,0,1);
    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,1,1,0);
    marshal_WdtpInterfacePointer(MSHCTX_INPROC, MSHCTX_DIFFERENTMACHINE,1,1,1);
}
