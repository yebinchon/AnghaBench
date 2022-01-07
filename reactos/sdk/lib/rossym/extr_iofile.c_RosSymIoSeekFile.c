
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_2__ {int (* SeekFileProc ) (int ,int ) ;} ;
typedef int PVOID ;
typedef TYPE_1__* PROSSYM_OWN_FILECONTEXT ;
typedef int BOOLEAN ;


 int stub1 (int ,int ) ;

BOOLEAN
RosSymIoSeekFile(PVOID FileContext, ULONG_PTR Position)
{
    PROSSYM_OWN_FILECONTEXT OwnContext = (PROSSYM_OWN_FILECONTEXT)FileContext;
    return OwnContext->SeekFileProc(FileContext, Position);
}
