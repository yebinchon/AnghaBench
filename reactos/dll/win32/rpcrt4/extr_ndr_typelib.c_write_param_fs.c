
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_4__ {int wParamFlags; } ;
struct TYPE_5__ {int tdesc; TYPE_1__ paramdesc; } ;
typedef int TYPEDESC ;
typedef int ITypeInfo ;
typedef int HRESULT ;
typedef TYPE_2__ ELEMDESC ;
typedef scalar_t__ BOOL ;


 unsigned short IsIn ;
 unsigned short IsOut ;
 unsigned short IsReturn ;
 int PARAMFLAG_FIN ;
 int PARAMFLAG_FOUT ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 int WRITE_SHORT (unsigned char*,size_t,unsigned char) ;
 int get_param_info (int *,int *,int,int,unsigned short*,unsigned short*,unsigned char*,int **) ;
 unsigned short get_stack_size (int *,int *) ;
 size_t write_type_tfs (int *,unsigned char*,size_t*,int *,int ,int) ;

__attribute__((used)) static HRESULT write_param_fs(ITypeInfo *typeinfo, unsigned char *type,
        size_t *typelen, unsigned char *proc, size_t *proclen, ELEMDESC *desc,
        BOOL is_return, unsigned short *stack_offset)
{
    USHORT param_flags = desc->paramdesc.wParamFlags;
    int is_in = param_flags & PARAMFLAG_FIN;
    int is_out = param_flags & PARAMFLAG_FOUT;
    TYPEDESC *tdesc = &desc->tdesc, *tfs_tdesc;
    unsigned short server_size;
    unsigned short stack_size = get_stack_size(typeinfo, tdesc);
    unsigned char basetype;
    unsigned short flags;
    size_t off = 0;
    HRESULT hr;

    hr = get_param_info(typeinfo, tdesc, is_in, is_out, &server_size, &flags,
            &basetype, &tfs_tdesc);

    if (is_in) flags |= IsIn;
    if (is_out) flags |= IsOut;
    if (is_return) flags |= IsOut | IsReturn;

    server_size = (server_size + 7) / 8;
    if (server_size >= 8) server_size = 0;
    flags |= server_size << 13;

    if (!basetype)
        off = write_type_tfs(typeinfo, type, typelen, tfs_tdesc, TRUE, server_size != 0);

    if (SUCCEEDED(hr))
    {
        WRITE_SHORT(proc, *proclen, flags);
        WRITE_SHORT(proc, *proclen, *stack_offset);
        WRITE_SHORT(proc, *proclen, basetype ? basetype : off);

        *stack_offset += stack_size;
    }

    return hr;
}
