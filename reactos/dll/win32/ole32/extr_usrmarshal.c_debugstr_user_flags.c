
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 scalar_t__ HIWORD (int ) ;
 int LOWORD (int ) ;




 scalar_t__ NDR_LOCAL_DATA_REPRESENTATION ;
 int sprintf (char*,char*,int) ;
 char const* wine_dbg_sprintf (char*,char const*,...) ;

__attribute__((used)) static const char* debugstr_user_flags(ULONG *pFlags)
{
    char buf[12];
    const char* loword;
    switch (LOWORD(*pFlags))
    {
    case 129:
        loword="MSHCTX_LOCAL";
        break;
    case 128:
        loword="MSHCTX_NOSHAREDMEM";
        break;
    case 131:
        loword="MSHCTX_DIFFERENTMACHINE";
        break;
    case 130:
        loword="MSHCTX_INPROC";
        break;
    default:
        sprintf(buf, "%d", LOWORD(*pFlags));
        loword=buf;
    }

    if (HIWORD(*pFlags) == NDR_LOCAL_DATA_REPRESENTATION)
        return wine_dbg_sprintf("MAKELONG(%s, NDR_LOCAL_DATA_REPRESENTATION)", loword);
    else
        return wine_dbg_sprintf("MAKELONG(%s, 0x%04x)", loword, HIWORD(*pFlags));
}
