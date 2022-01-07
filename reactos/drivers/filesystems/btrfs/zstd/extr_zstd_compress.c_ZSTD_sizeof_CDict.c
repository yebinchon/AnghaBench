
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t workspaceSize; int dictContentSize; scalar_t__ dictBuffer; } ;
typedef TYPE_1__ ZSTD_CDict ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int ) ;

size_t ZSTD_sizeof_CDict(const ZSTD_CDict* cdict)
{
    if (cdict==((void*)0)) return 0;
    DEBUGLOG(5, "sizeof(*cdict) : %u", (U32)sizeof(*cdict));
    return cdict->workspaceSize + (cdict->dictBuffer ? cdict->dictContentSize : 0) + sizeof(*cdict);
}
