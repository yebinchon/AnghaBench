#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t WORD ;
struct TYPE_7__ {int /*<<< orphan*/  vt; } ;
struct TYPE_6__ {size_t cParams; TYPE_1__* lprgelemdescParam; } ;
struct TYPE_5__ {TYPE_4__ tdesc; } ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  TYPE_2__ FUNCDESC ;

/* Variables and functions */
 int FC_AUTO_HANDLE ; 
 unsigned char FC_DOUBLE ; 
 unsigned char FC_FLOAT ; 
 int Oi_OBJECT_PROC ; 
 int Oi_OBJ_USE_V2_INTERPRETER ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,unsigned short) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(ITypeInfo *typeinfo, FUNCDESC *desc,
        WORD proc_idx, unsigned char *proc, size_t *proclen)
{
    unsigned short stack_size = 2 * sizeof(void *); /* This + return */
#ifdef __x86_64__
    unsigned short float_mask = 0;
    unsigned char basetype;
#endif
    WORD param_idx;

    FUNC0 (proc, *proclen, FC_AUTO_HANDLE);
    FUNC0 (proc, *proclen, Oi_OBJECT_PROC | Oi_OBJ_USE_V2_INTERPRETER);
    FUNC1(proc, *proclen, proc_idx);
    for (param_idx = 0; param_idx < desc->cParams; param_idx++)
        stack_size += FUNC3(typeinfo, &desc->lprgelemdescParam[param_idx].tdesc);
    FUNC1(proc, *proclen, stack_size);

    FUNC1(proc, *proclen, 0); /* constant_client_buffer_size */
    FUNC1(proc, *proclen, 0); /* constant_server_buffer_size */
#ifdef __x86_64__
    FUNC0 (proc, *proclen, 0x47);  /* HasExtensions | HasReturn | ClientMustSize | ServerMustSize */
#else
    WRITE_CHAR (proc, *proclen, 0x07);  /* HasReturn | ClientMustSize | ServerMustSize */
#endif
    FUNC0 (proc, *proclen, desc->cParams + 1); /* incl. return value */
#ifdef __x86_64__
    FUNC0 (proc, *proclen, 10); /* extension size */
    FUNC0 (proc, *proclen, 0);  /* INTERPRETER_OPT_FLAGS2 */
    FUNC1(proc, *proclen, 0);  /* ClientCorrHint */
    FUNC1(proc, *proclen, 0);  /* ServerCorrHint */
    FUNC1(proc, *proclen, 0);  /* NotifyIndex */
    for (param_idx = 0; param_idx < desc->cParams && param_idx < 3; param_idx++)
    {
        basetype = FUNC2(desc->lprgelemdescParam[param_idx].tdesc.vt);
        if (basetype == FC_FLOAT)
            float_mask |= (1 << ((param_idx + 1) * 2));
        else if (basetype == FC_DOUBLE)
            float_mask |= (2 << ((param_idx + 1) * 2));
    }
    FUNC1(proc, *proclen, float_mask);
#endif
}