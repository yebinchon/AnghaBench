
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_11__ {unsigned int cbSizeInstance; } ;
struct TYPE_10__ {int vt; int hreftype; TYPE_2__* lpadesc; } ;
struct TYPE_9__ {unsigned int cDims; TYPE_1__* rgbounds; TYPE_3__ tdescElem; } ;
struct TYPE_8__ {unsigned int cElements; } ;
typedef TYPE_3__ TYPEDESC ;
typedef TYPE_4__ TYPEATTR ;
typedef int ITypeInfo ;


 int FIXME (char*,int) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_4__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_4__*) ;
__attribute__((used)) static unsigned int type_memsize(ITypeInfo *typeinfo, TYPEDESC *desc)
{
    switch (desc->vt)
    {
    case 144:
    case 135:
        return 1;
    case 143:
    case 134:
    case 151:
        return 2;
    case 142:
    case 133:
    case 138:
    case 140:
    case 131:
    case 146:
    case 145:
        return 4;
    case 141:
    case 132:
    case 137:
    case 148:
        return 8;
    case 150:
    case 136:
    case 139:
    case 130:
    case 147:
        return sizeof(void *);
    case 128:
        return sizeof(VARIANT);
    case 149:
    {
        unsigned int size = type_memsize(typeinfo, &desc->lpadesc->tdescElem);
        unsigned int i;
        for (i = 0; i < desc->lpadesc->cDims; i++)
            size *= desc->lpadesc->rgbounds[i].cElements;
        return size;
    }
    case 129:
    {
        unsigned int size = 0;
        ITypeInfo *refinfo;
        TYPEATTR *attr;

        ITypeInfo_GetRefTypeInfo(typeinfo, desc->hreftype, &refinfo);
        ITypeInfo_GetTypeAttr(refinfo, &attr);
        size = attr->cbSizeInstance;
        ITypeInfo_ReleaseTypeAttr(refinfo, attr);
        ITypeInfo_Release(refinfo);
        return size;
    }
    default:
        FIXME("unhandled type %u\n", desc->vt);
        return 0;
    }
}
