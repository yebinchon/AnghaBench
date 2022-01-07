
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_3__ {scalar_t__* vals; } ;
typedef TYPE_1__ paramValues_t ;


 int DISPLAYLEVEL (int,char*,...) ;
 size_t NUM_PARAMS ;

__attribute__((used)) static void display_params_tested(paramValues_t cParams)
{
    varInds_t vi;
    DISPLAYLEVEL(3, "\r testing :");
    for (vi=0; vi < NUM_PARAMS; vi++) {
        DISPLAYLEVEL(3, "%3u,", (unsigned)cParams.vals[vi]);
    }
    DISPLAYLEVEL(3, "\b    \r");
}
