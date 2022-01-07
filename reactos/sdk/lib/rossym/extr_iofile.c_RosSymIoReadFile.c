
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int (* ReadFileProc ) (int ,int ,int ) ;} ;
typedef int PVOID ;
typedef TYPE_1__* PROSSYM_OWN_FILECONTEXT ;
typedef int BOOLEAN ;


 int stub1 (int ,int ,int ) ;

BOOLEAN
RosSymIoReadFile(PVOID FileContext, PVOID Buffer, ULONG Size)
{
    PROSSYM_OWN_FILECONTEXT OwnContext = (PROSSYM_OWN_FILECONTEXT)FileContext;
    return OwnContext->ReadFileProc(FileContext, Buffer, Size);
}
