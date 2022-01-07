
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int vt; int hreftype; int lptdesc; } ;
struct TYPE_9__ {int typekind; int cbSizeInstance; TYPE_1__ tdescAlias; } ;
typedef TYPE_1__ TYPEDESC ;
typedef TYPE_2__ TYPEATTR ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 unsigned char FC_ENUM32 ;
 int FIXME (char*,int) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_2__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_2__*) ;
 unsigned short IsBasetype ;
 unsigned short IsByValue ;
 unsigned short IsSimpleRef ;
 unsigned short MustFree ;
 unsigned short MustSize ;
 int S_OK ;



 int TRACE (char*,int) ;
 unsigned char get_base_type (int) ;
 int get_param_pointer_info (int *,int ,int,int,unsigned short*,unsigned short*,unsigned char*,TYPE_1__**) ;

__attribute__((used)) static HRESULT get_param_info(ITypeInfo *typeinfo, TYPEDESC *tdesc, int is_in,
        int is_out, unsigned short *server_size, unsigned short *flags,
        unsigned char *basetype, TYPEDESC **tfs_tdesc)
{
    ITypeInfo *refinfo;
    HRESULT hr = S_OK;
    TYPEATTR *attr;

    *server_size = 0;
    *flags = MustSize;
    *basetype = 0;
    *tfs_tdesc = tdesc;

    TRACE("vt %u\n", tdesc->vt);

    switch (tdesc->vt)
    {
    case 128:

        *flags |= IsSimpleRef | MustFree;
        break;


    case 136:
    case 131:
    case 134:
        *flags |= IsByValue | MustFree;
        break;
    case 130:
    case 133:
    case 135:
        *flags |= MustFree;
        break;
    case 132:
        return get_param_pointer_info(typeinfo, tdesc->lptdesc, is_in, is_out,
                server_size, flags, basetype, tfs_tdesc);
    case 129:
        ITypeInfo_GetRefTypeInfo(typeinfo, tdesc->hreftype, &refinfo);
        ITypeInfo_GetTypeAttr(refinfo, &attr);

        switch (attr->typekind)
        {
        case 138:
            *flags |= IsBasetype;
            *basetype = FC_ENUM32;
            break;
        case 137:



            if (attr->cbSizeInstance <= 8)
                *flags |= IsByValue | MustFree;
            else
                *flags |= IsSimpleRef | MustFree;

            break;
        case 139:
            hr = get_param_info(refinfo, &attr->tdescAlias, is_in, is_out,
                    server_size, flags, basetype, tfs_tdesc);
            break;
        default:
            FIXME("unhandled kind %#x\n", attr->typekind);
            hr = E_NOTIMPL;
            break;
        }

        ITypeInfo_ReleaseTypeAttr(refinfo, attr);
        ITypeInfo_Release(refinfo);
        break;
    default:
        if ((*basetype = get_base_type(tdesc->vt)))
            *flags |= IsBasetype;
        else
        {
            FIXME("unhandled type %u\n", tdesc->vt);
            return E_NOTIMPL;
        }
        break;
    }

    return hr;
}
