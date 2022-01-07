
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int cArgs; unsigned int cNamedArgs; scalar_t__ rgvarg; int * rgdispidNamedArgs; } ;
typedef TYPE_1__ DISPPARAMS ;


 int TRACE (char*,...) ;
 unsigned int debugstr_variant (scalar_t__) ;

__attribute__((used)) static void dump_DispParms(const DISPPARAMS * pdp)
{
    unsigned int index;

    TRACE("args=%u named args=%u\n", pdp->cArgs, pdp->cNamedArgs);

    if (pdp->cNamedArgs && pdp->rgdispidNamedArgs)
    {
        TRACE("named args:\n");
        for (index = 0; index < pdp->cNamedArgs; index++)
            TRACE( "\t0x%x\n", pdp->rgdispidNamedArgs[index] );
    }

    if (pdp->cArgs && pdp->rgvarg)
    {
        TRACE("args:\n");
        for (index = 0; index < pdp->cArgs; index++)
            TRACE("  [%d] %s\n", index, debugstr_variant(pdp->rgvarg+index));
    }
}
