
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int cParams; int elemdescFunc; int * lprgelemdescParam; } ;
typedef int ITypeInfo ;
typedef int HRESULT ;
typedef TYPE_1__ FUNCDESC ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int ITypeInfo_GetFuncDesc (int *,int,TYPE_1__**) ;
 int ITypeInfo_ReleaseFuncDesc (int *,TYPE_1__*) ;
 int S_OK ;
 int TRACE (char*,int) ;
 int TRUE ;
 int write_param_fs (int *,unsigned char*,size_t*,unsigned char*,size_t*,int *,int ,unsigned short*) ;
 int write_proc_func_header (int *,TYPE_1__*,int,unsigned char*,size_t*) ;

__attribute__((used)) static HRESULT write_iface_fs(ITypeInfo *typeinfo, WORD funcs, WORD parentfuncs,
        unsigned char *type, size_t *typelen, unsigned char *proc,
        size_t *proclen, unsigned short *offset)
{
    unsigned short stack_offset;
    WORD proc_idx, param_idx;
    FUNCDESC *desc;
    HRESULT hr;

    for (proc_idx = 3; proc_idx < parentfuncs; proc_idx++)
    {
        if (offset)
            offset[proc_idx - 3] = -1;
    }

    for (proc_idx = 0; proc_idx < funcs; proc_idx++)
    {
        TRACE("Writing procedure %d.\n", proc_idx);

        hr = ITypeInfo_GetFuncDesc(typeinfo, proc_idx, &desc);
        if (FAILED(hr)) return hr;

        if (offset)
            offset[proc_idx + parentfuncs - 3] = *proclen;

        write_proc_func_header(typeinfo, desc, proc_idx + parentfuncs, proc, proclen);

        stack_offset = sizeof(void *);
        for (param_idx = 0; param_idx < desc->cParams; param_idx++)
        {
            TRACE("Writing parameter %d.\n", param_idx);
            hr = write_param_fs(typeinfo, type, typelen, proc, proclen,
                    &desc->lprgelemdescParam[param_idx], FALSE, &stack_offset);
            if (FAILED(hr))
            {
                ITypeInfo_ReleaseFuncDesc(typeinfo, desc);
                return hr;
            }
        }

        hr = write_param_fs(typeinfo, type, typelen, proc, proclen,
                &desc->elemdescFunc, TRUE, &stack_offset);
        ITypeInfo_ReleaseFuncDesc(typeinfo, desc);
        if (FAILED(hr)) return hr;
    }

    return S_OK;
}
