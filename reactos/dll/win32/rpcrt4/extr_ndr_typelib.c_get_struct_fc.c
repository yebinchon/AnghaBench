
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int VARTYPE ;
struct TYPE_10__ {int vt; TYPE_1__* lpadesc; } ;
struct TYPE_11__ {TYPE_2__ tdesc; } ;
struct TYPE_12__ {TYPE_3__ elemdescVar; } ;
typedef TYPE_4__ VARDESC ;
struct TYPE_13__ {scalar_t__ cVars; } ;
struct TYPE_9__ {int tdescElem; } ;
typedef TYPE_5__ TYPEATTR ;
typedef int ITypeInfo ;


 int FC_BOGUS_ARRAY ;
 unsigned char FC_BOGUS_STRUCT ;
 unsigned char FC_STRUCT ;
 int FIXME (char*,int) ;
 int ITypeInfo_GetVarDesc (int *,scalar_t__,TYPE_4__**) ;
 int ITypeInfo_ReleaseVarDesc (int *,TYPE_4__*) ;

 int get_array_fc (int *,int *) ;
 int get_base_type (int) ;

__attribute__((used)) static unsigned char get_struct_fc(ITypeInfo *typeinfo, TYPEATTR *attr)
{
    unsigned char fc = FC_STRUCT;
    VARDESC *desc;
    VARTYPE vt;
    WORD i;

    for (i = 0; i < attr->cVars; i++)
    {
        ITypeInfo_GetVarDesc(typeinfo, i, &desc);
        vt = desc->elemdescVar.tdesc.vt;

        switch (vt)
        {
        case 128:
            if (get_array_fc(typeinfo, &desc->elemdescVar.tdesc.lpadesc->tdescElem) == FC_BOGUS_ARRAY)
                fc = FC_BOGUS_STRUCT;
            break;
        default:
            if (!get_base_type(vt))
            {
                FIXME("unhandled type %u\n", vt);
                fc = FC_BOGUS_STRUCT;
            }
            break;
        }

        ITypeInfo_ReleaseVarDesc(typeinfo, desc);
    }

    return fc;
}
