
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
struct TYPE_6__ {int (* Write ) (int ,TYPE_1__*,int ,int ) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
struct TYPE_7__ {int data; int len; int flag; } ;
typedef TYPE_2__ cmsICCData ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int _cmsWriteUInt32Number (int ,TYPE_1__*,int ) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_1__*,int ,int ) ;

__attribute__((used)) static
cmsBool Type_Data_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
   cmsICCData* BinData = (cmsICCData*) Ptr;

   if (!_cmsWriteUInt32Number(ContextID, io, BinData ->flag)) return FALSE;

   return io ->Write(ContextID, io, BinData ->len, BinData ->data);

   cmsUNUSED_PARAMETER(nItems);
   cmsUNUSED_PARAMETER(self);
}
