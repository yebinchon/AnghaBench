
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_io_handler {scalar_t__ stream; } ;
typedef int cmsUInt32Number ;
typedef int cmsContext ;
struct TYPE_2__ {int Pointer; } ;
typedef TYPE_1__ FILEMEM ;


 int cmsUNUSED_PARAMETER (int ) ;

__attribute__((used)) static
cmsUInt32Number MemoryTell(cmsContext ContextID, struct _cms_io_handler* iohandler)
{
    FILEMEM* ResData = (FILEMEM*) iohandler ->stream;
    cmsUNUSED_PARAMETER(ContextID);

    if (ResData == ((void*)0)) return 0;
    return ResData -> Pointer;
}
