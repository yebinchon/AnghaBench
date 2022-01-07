
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int typekind; } ;
struct TYPE_7__ {int vt; int hreftype; int lpadesc; int lptdesc; } ;
typedef TYPE_1__ TYPEDESC ;
typedef TYPE_2__ TYPEATTR ;
typedef int ITypeInfo ;
typedef scalar_t__ BOOL ;


 int FIXME (char*,int) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_2__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_2__*) ;

 int TRACE (char*,int,char*) ;



 int WRITE_SHORT (unsigned char*,size_t,int ) ;
 int assert (int) ;
 int get_base_type (int) ;
 size_t write_array_tfs (int *,unsigned char*,size_t*,int ) ;
 size_t write_oleaut_tfs (int) ;
 size_t write_pointer_tfs (int *,unsigned char*,size_t*,int ,scalar_t__,scalar_t__) ;
 size_t write_struct_tfs (int *,unsigned char*,size_t*,TYPE_2__*) ;

__attribute__((used)) static size_t write_type_tfs(ITypeInfo *typeinfo, unsigned char *str,
        size_t *len, TYPEDESC *desc, BOOL toplevel, BOOL onstack)
{
    ITypeInfo *refinfo;
    TYPEATTR *attr;
    size_t off;

    TRACE("vt %d%s\n", desc->vt, toplevel ? " (toplevel)" : "");

    if ((off = write_oleaut_tfs(desc->vt)))
        return off;

    switch (desc->vt)
    {
    case 129:
        return write_pointer_tfs(typeinfo, str, len, desc->lptdesc, toplevel, onstack);
    case 130:
        return write_array_tfs(typeinfo, str, len, desc->lpadesc);
    case 128:
        ITypeInfo_GetRefTypeInfo(typeinfo, desc->hreftype, &refinfo);
        ITypeInfo_GetTypeAttr(refinfo, &attr);

        switch (attr->typekind)
        {
        case 131:
            off = write_struct_tfs(refinfo, str, len, attr);
            break;
        default:
            FIXME("unhandled kind %u\n", attr->typekind);
            off = *len;
            WRITE_SHORT(str, *len, 0);
            break;
        }

        ITypeInfo_ReleaseTypeAttr(refinfo, attr);
        ITypeInfo_Release(refinfo);
        break;
    default:

        assert(!get_base_type(desc->vt));
        FIXME("unhandled type %u\n", desc->vt);
        off = *len;
        WRITE_SHORT(str, *len, 0);
        break;
    }

    return off;
}
