
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IsClient; } ;
struct TYPE_6__ {int MesVersion; TYPE_1__ StubMsg; } ;
typedef TYPE_2__ MIDL_ES_MESSAGE ;


 int TRUE ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static inline void init_MIDL_ES_MESSAGE(MIDL_ES_MESSAGE *pEsMsg)
{
    memset(pEsMsg, 0, sizeof(*pEsMsg));


    pEsMsg->StubMsg.IsClient = TRUE;
    pEsMsg->MesVersion = 1;
}
