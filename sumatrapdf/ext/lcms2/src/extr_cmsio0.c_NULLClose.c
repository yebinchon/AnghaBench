
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ stream; } ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef TYPE_1__ FILENULL ;


 int TRUE ;
 int _cmsFree (int ,TYPE_1__*) ;

__attribute__((used)) static
cmsBool NULLClose(cmsContext ContextID, cmsIOHANDLER* iohandler)
{
    FILENULL* ResData = (FILENULL*) iohandler ->stream;

    _cmsFree(ContextID, ResData);
    _cmsFree(ContextID, iohandler);
    return TRUE;
}
