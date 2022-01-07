
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_7__ {int vt; } ;
struct TYPE_6__ {size_t cParams; TYPE_1__* lprgelemdescParam; } ;
struct TYPE_5__ {TYPE_4__ tdesc; } ;
typedef int ITypeInfo ;
typedef TYPE_2__ FUNCDESC ;


 int FC_AUTO_HANDLE ;
 unsigned char FC_DOUBLE ;
 unsigned char FC_FLOAT ;
 int Oi_OBJECT_PROC ;
 int Oi_OBJ_USE_V2_INTERPRETER ;
 int WRITE_CHAR (unsigned char*,size_t,int) ;
 int WRITE_SHORT (unsigned char*,size_t,unsigned short) ;
 unsigned char get_base_type (int ) ;
 scalar_t__ get_stack_size (int *,TYPE_4__*) ;

__attribute__((used)) static void write_proc_func_header(ITypeInfo *typeinfo, FUNCDESC *desc,
        WORD proc_idx, unsigned char *proc, size_t *proclen)
{
    unsigned short stack_size = 2 * sizeof(void *);

    unsigned short float_mask = 0;
    unsigned char basetype;

    WORD param_idx;

    WRITE_CHAR (proc, *proclen, FC_AUTO_HANDLE);
    WRITE_CHAR (proc, *proclen, Oi_OBJECT_PROC | Oi_OBJ_USE_V2_INTERPRETER);
    WRITE_SHORT(proc, *proclen, proc_idx);
    for (param_idx = 0; param_idx < desc->cParams; param_idx++)
        stack_size += get_stack_size(typeinfo, &desc->lprgelemdescParam[param_idx].tdesc);
    WRITE_SHORT(proc, *proclen, stack_size);

    WRITE_SHORT(proc, *proclen, 0);
    WRITE_SHORT(proc, *proclen, 0);

    WRITE_CHAR (proc, *proclen, 0x47);



    WRITE_CHAR (proc, *proclen, desc->cParams + 1);

    WRITE_CHAR (proc, *proclen, 10);
    WRITE_CHAR (proc, *proclen, 0);
    WRITE_SHORT(proc, *proclen, 0);
    WRITE_SHORT(proc, *proclen, 0);
    WRITE_SHORT(proc, *proclen, 0);
    for (param_idx = 0; param_idx < desc->cParams && param_idx < 3; param_idx++)
    {
        basetype = get_base_type(desc->lprgelemdescParam[param_idx].tdesc.vt);
        if (basetype == FC_FLOAT)
            float_mask |= (1 << ((param_idx + 1) * 2));
        else if (basetype == FC_DOUBLE)
            float_mask |= (2 << ((param_idx + 1) * 2));
    }
    WRITE_SHORT(proc, *proclen, float_mask);

}
