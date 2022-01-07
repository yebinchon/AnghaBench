
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int HIWORD (int const) ;
 int LOWORD (int const) ;




 scalar_t__ NDR_LOCAL_DATA_REPRESENTATION ;
 int TRACE (char*,...) ;

__attribute__((used)) static void dump_user_flags(const ULONG *pFlags)
{
    if (HIWORD(*pFlags) == NDR_LOCAL_DATA_REPRESENTATION)
        TRACE("MAKELONG(NDR_LOCAL_REPRESENTATION, ");
    else
        TRACE("MAKELONG(0x%04x, ", HIWORD(*pFlags));
    switch (LOWORD(*pFlags))
    {
        case 129: TRACE("MSHCTX_LOCAL)"); break;
        case 128: TRACE("MSHCTX_NOSHAREDMEM)"); break;
        case 131: TRACE("MSHCTX_DIFFERENTMACHINE)"); break;
        case 130: TRACE("MSHCTX_INPROC)"); break;
        default: TRACE("%d)", LOWORD(*pFlags));
    }
}
