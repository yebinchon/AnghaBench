
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ vt; int hreftype; } ;
struct TYPE_9__ {int typekind; TYPE_1__ tdescAlias; int cImplTypes; int guid; } ;
typedef TYPE_1__ TYPEDESC ;
typedef TYPE_2__ TYPEATTR ;
typedef int ITypeInfo ;
typedef int GUID ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 unsigned char FC_ALLOCED_ON_STACK ;
 unsigned char FC_ENUM32 ;
 unsigned char FC_PAD ;
 unsigned char FC_POINTER_DEREF ;
 unsigned char FC_RP ;
 unsigned char FC_SIMPLE_POINTER ;
 unsigned char FC_UP ;
 int FIXME (char*,int) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_2__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_2__*) ;






 scalar_t__ VT_DISPATCH ;
 scalar_t__ VT_PTR ;
 scalar_t__ VT_UNKNOWN ;
 scalar_t__ VT_USERDEFINED ;
 int WRITE_CHAR (unsigned char*,size_t,unsigned char) ;
 int WRITE_SHORT (unsigned char*,size_t,size_t) ;
 int assert (int) ;
 unsigned char get_base_type (scalar_t__) ;
 int get_default_iface (int *,int ,int *) ;
 int write_ip_tfs (unsigned char*,size_t*,int *) ;
 size_t write_struct_tfs (int *,unsigned char*,size_t*,TYPE_2__*) ;
 size_t write_type_tfs (int *,unsigned char*,size_t*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static size_t write_pointer_tfs(ITypeInfo *typeinfo, unsigned char *str,
        size_t *len, TYPEDESC *desc, BOOL toplevel, BOOL onstack)
{
    unsigned char basetype, flags = 0;
    size_t ref, off = *len;
    ITypeInfo *refinfo;
    TYPEATTR *attr;
    GUID guid;

    if (desc->vt == VT_USERDEFINED)
    {
        ITypeInfo_GetRefTypeInfo(typeinfo, desc->hreftype, &refinfo);
        ITypeInfo_GetTypeAttr(refinfo, &attr);

        switch (attr->typekind)
        {
        case 130:
            assert(!toplevel);
            WRITE_CHAR(str, *len, FC_UP);
            WRITE_CHAR(str, *len, FC_SIMPLE_POINTER);
            WRITE_CHAR(str, *len, FC_ENUM32);
            WRITE_CHAR(str, *len, FC_PAD);
            break;
        case 128:
            assert(!toplevel);
            ref = write_struct_tfs(refinfo, str, len, attr);
            off = *len;
            WRITE_CHAR (str, *len, FC_UP);
            WRITE_CHAR (str, *len, 0);
            WRITE_SHORT(str, *len, ref - *len);
            break;
        case 129:
        case 131:
            write_ip_tfs(str, len, &attr->guid);
            break;
        case 132:
            get_default_iface(refinfo, attr->cImplTypes, &guid);
            write_ip_tfs(str, len, &guid);
            break;
        case 133:
            off = write_pointer_tfs(refinfo, str, len, &attr->tdescAlias, toplevel, onstack);
            break;
        default:
            FIXME("unhandled kind %#x\n", attr->typekind);
            WRITE_SHORT(str, *len, 0);
            break;
        }

        ITypeInfo_ReleaseTypeAttr(refinfo, attr);
        ITypeInfo_Release(refinfo);
    }
    else if ((basetype = get_base_type(desc->vt)))
    {
        assert(!toplevel);
        WRITE_CHAR(str, *len, FC_UP);
        WRITE_CHAR(str, *len, FC_SIMPLE_POINTER);
        WRITE_CHAR(str, *len, basetype);
        WRITE_CHAR(str, *len, FC_PAD);
    }
    else
    {
        ref = write_type_tfs(typeinfo, str, len, desc, FALSE, FALSE);

        if (onstack) flags |= FC_ALLOCED_ON_STACK;
        if (desc->vt == VT_PTR || desc->vt == VT_UNKNOWN || desc->vt == VT_DISPATCH)
            flags |= FC_POINTER_DEREF;

        off = *len;

        WRITE_CHAR (str, *len, toplevel ? FC_RP : FC_UP);
        WRITE_CHAR (str, *len, flags);
        WRITE_SHORT(str, *len, ref - *len);
    }

    return off;
}
