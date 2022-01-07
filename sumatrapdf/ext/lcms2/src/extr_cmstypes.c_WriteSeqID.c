
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
struct TYPE_10__ {TYPE_2__* seq; } ;
typedef TYPE_3__ cmsSEQ ;
struct TYPE_11__ {int (* Write ) (int ,TYPE_4__*,int,int ) ;} ;
typedef TYPE_4__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_8__ {int ID8; } ;
struct TYPE_9__ {int Description; TYPE_1__ ProfileID; } ;


 int FALSE ;
 int SaveDescription (int ,struct _cms_typehandler_struct*,TYPE_4__*,int ) ;
 int TRUE ;
 int cmsUNUSED_PARAMETER (size_t) ;
 int stub1 (int ,TYPE_4__*,int,int ) ;

__attribute__((used)) static
cmsBool WriteSeqID(cmsContext ContextID, struct _cms_typehandler_struct* self,
                                             cmsIOHANDLER* io,
                                             void* Cargo,
                                             cmsUInt32Number n,
                                             cmsUInt32Number SizeOfTag)
{
    cmsSEQ* Seq = (cmsSEQ*) Cargo;

    if (!io ->Write(ContextID, io, 16, Seq ->seq[n].ProfileID.ID8)) return FALSE;


    if (!SaveDescription(ContextID, self, io, Seq ->seq[n].Description)) return FALSE;

    return TRUE;

    cmsUNUSED_PARAMETER(SizeOfTag);
}
