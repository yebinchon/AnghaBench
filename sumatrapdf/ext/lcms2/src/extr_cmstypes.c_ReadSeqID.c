
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
struct TYPE_9__ {TYPE_3__* seq; } ;
typedef TYPE_2__ cmsSEQ ;
struct TYPE_8__ {int ID8; } ;
struct TYPE_10__ {int Description; TYPE_1__ ProfileID; } ;
typedef TYPE_3__ cmsPSEQDESC ;
struct TYPE_11__ {int (* Read ) (int ,TYPE_4__*,int ,int,int) ;} ;
typedef TYPE_4__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int ReadEmbeddedText (int ,struct _cms_typehandler_struct*,TYPE_4__*,int *,size_t) ;
 int TRUE ;
 int stub1 (int ,TYPE_4__*,int ,int,int) ;

__attribute__((used)) static
cmsBool ReadSeqID(cmsContext ContextID, struct _cms_typehandler_struct* self,
                                             cmsIOHANDLER* io,
                                             void* Cargo,
                                             cmsUInt32Number n,
                                             cmsUInt32Number SizeOfTag)
{
    cmsSEQ* OutSeq = (cmsSEQ*) Cargo;
    cmsPSEQDESC* seq = &OutSeq ->seq[n];

    if (io -> Read(ContextID, io,seq ->ProfileID.ID8, 16, 1) != 1) return FALSE;
    if (!ReadEmbeddedText(ContextID, self, io, &seq ->Description, SizeOfTag)) return FALSE;

    return TRUE;
}
