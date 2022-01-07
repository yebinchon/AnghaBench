
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t USHORT ;
typedef int ULONG ;
struct TYPE_9__ {int vt; } ;
struct TYPE_8__ {size_t cDims; TYPE_1__* rgbounds; TYPE_3__ tdescElem; } ;
struct TYPE_7__ {int cElements; } ;
typedef int ITypeInfo ;
typedef TYPE_2__ ARRAYDESC ;


 int FALSE ;
 unsigned char FC_EMBEDDED_COMPLEX ;
 unsigned char FC_END ;
 unsigned char FC_LGFARRAY ;
 unsigned char FC_PAD ;
 int FIXME (char*) ;
 int WRITE_CHAR (unsigned char*,size_t,unsigned char) ;
 int WRITE_INT (unsigned char*,size_t,int ) ;
 int WRITE_SHORT (unsigned char*,size_t,size_t) ;
 unsigned char get_array_fc (int *,TYPE_3__*) ;
 unsigned char get_base_type (int ) ;
 int type_memsize (int *,TYPE_3__*) ;
 size_t write_type_tfs (int *,unsigned char*,size_t*,TYPE_3__*,int ,int ) ;

__attribute__((used)) static size_t write_array_tfs(ITypeInfo *typeinfo, unsigned char *str,
    size_t *len, ARRAYDESC *desc)
{
    unsigned char fc = get_array_fc(typeinfo, &desc->tdescElem);
    ULONG size = type_memsize(typeinfo, &desc->tdescElem);
    unsigned char basetype;
    size_t ref = 0, off;
    USHORT i;

    if (fc != FC_LGFARRAY)
        FIXME("complex arrays not implemented\n");

    if (!(basetype = get_base_type(desc->tdescElem.vt)))
        ref = write_type_tfs(typeinfo, str, len, &desc->tdescElem, FALSE, FALSE);



    for (i = 0; i < desc->cDims; i++) size *= desc->rgbounds[i].cElements;

    off = *len;

    WRITE_CHAR(str, *len, FC_LGFARRAY);
    WRITE_CHAR(str, *len, 0);
    WRITE_INT (str, *len, size);
    if (basetype)
        WRITE_CHAR(str, *len, basetype);
    else
    {
        WRITE_CHAR (str, *len, FC_EMBEDDED_COMPLEX);
        WRITE_CHAR (str, *len, 0);
        WRITE_SHORT(str, *len, ref - *len);
        WRITE_CHAR (str, *len, FC_PAD);
    }
    WRITE_CHAR(str, *len, FC_END);

    return off;
}
