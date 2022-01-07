
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbAlignment; int cbSizeInstance; } ;
typedef TYPE_1__ TYPEATTR ;
typedef int ITypeInfo ;


 int FC_END ;
 int FC_PAD ;
 unsigned char FC_STRUCT ;
 int FIXME (char*,unsigned char) ;
 int WRITE_CHAR (unsigned char*,size_t,int) ;
 int WRITE_SHORT (unsigned char*,size_t,int ) ;
 unsigned char get_struct_fc (int *,TYPE_1__*) ;

__attribute__((used)) static size_t write_struct_tfs(ITypeInfo *typeinfo, unsigned char *str,
        size_t *len, TYPEATTR *attr)
{
    unsigned char fc = get_struct_fc(typeinfo, attr);
    size_t off = *len;

    if (fc != FC_STRUCT)
        FIXME("fc %02x not implemented\n", fc);

    WRITE_CHAR (str, *len, FC_STRUCT);
    WRITE_CHAR (str, *len, attr->cbAlignment - 1);
    WRITE_SHORT(str, *len, attr->cbSizeInstance);
    WRITE_CHAR (str, *len, FC_PAD);
    WRITE_CHAR (str, *len, FC_END);

    return off;
}
