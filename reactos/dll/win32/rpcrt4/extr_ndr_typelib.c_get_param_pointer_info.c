
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int vt; int hreftype; TYPE_1__* lptdesc; } ;
struct TYPE_11__ {unsigned short cbSizeInstance; int typekind; TYPE_2__ tdescAlias; } ;
struct TYPE_9__ {int vt; int hreftype; } ;
typedef TYPE_2__ TYPEDESC ;
typedef TYPE_3__ TYPEATTR ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 unsigned char FC_ENUM32 ;
 int FIXME (char*,int ) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_3__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_3__*) ;
 unsigned short IsBasetype ;
 unsigned short IsSimpleRef ;
 unsigned short MustFree ;
 int S_OK ;
 unsigned char get_base_type (int) ;
 unsigned short type_memsize (int *,TYPE_2__*) ;

__attribute__((used)) static HRESULT get_param_pointer_info(ITypeInfo *typeinfo, TYPEDESC *tdesc, int is_in,
        int is_out, unsigned short *server_size, unsigned short *flags,
        unsigned char *basetype, TYPEDESC **tfs_tdesc)
{
    ITypeInfo *refinfo;
    HRESULT hr = S_OK;
    TYPEATTR *attr;

    switch (tdesc->vt)
    {
    case 129:
    case 131:
        *flags |= MustFree;
        if (is_in && is_out)
            *server_size = sizeof(void *);
        break;
    case 130:
        *flags |= MustFree;

        if (tdesc->lptdesc->vt == 128)
        {
            ITypeInfo_GetRefTypeInfo(typeinfo, tdesc->lptdesc->hreftype, &refinfo);
            ITypeInfo_GetTypeAttr(refinfo, &attr);

            switch (attr->typekind)
            {
            case 134:
            case 136:
            case 137:
                if (is_in && is_out)
                    *server_size = sizeof(void *);
                break;
            default:
                *server_size = sizeof(void *);
            }

            ITypeInfo_ReleaseTypeAttr(refinfo, attr);
            ITypeInfo_Release(refinfo);
        }
        else
            *server_size = sizeof(void *);
        break;
    case 132:
        *flags |= IsSimpleRef | MustFree;
        *server_size = type_memsize(typeinfo, tdesc);
        *tfs_tdesc = tdesc;
        break;
    case 128:
        ITypeInfo_GetRefTypeInfo(typeinfo, tdesc->hreftype, &refinfo);
        ITypeInfo_GetTypeAttr(refinfo, &attr);

        switch (attr->typekind)
        {
        case 135:
            *flags |= IsSimpleRef | IsBasetype;
            if (!is_in && is_out)
                *server_size = sizeof(void *);
            *basetype = FC_ENUM32;
            break;
        case 133:
            *flags |= IsSimpleRef | MustFree;
            if (!is_in && is_out)
                *server_size = attr->cbSizeInstance;
            *tfs_tdesc = tdesc;
            break;
        case 134:
        case 136:
        case 137:
            *flags |= MustFree;
            break;
        case 138:
            hr = get_param_pointer_info(refinfo, &attr->tdescAlias, is_in,
                    is_out, server_size, flags, basetype, tfs_tdesc);
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
        *flags |= IsSimpleRef;
        *tfs_tdesc = tdesc;
        if (!is_in && is_out)
            *server_size = type_memsize(typeinfo, tdesc);
        if ((*basetype = get_base_type(tdesc->vt)))
            *flags |= IsBasetype;
        break;
    }

    return hr;
}
