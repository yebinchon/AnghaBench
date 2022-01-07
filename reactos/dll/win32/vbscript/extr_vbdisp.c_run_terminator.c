
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int terminator_ran; int ref; TYPE_2__* desc; } ;
typedef TYPE_3__ vbdisp_t ;
struct TYPE_11__ {int member_0; } ;
struct TYPE_9__ {size_t class_terminate_id; TYPE_1__* funcs; int ctx; } ;
struct TYPE_8__ {int * entries; } ;
typedef TYPE_4__ DISPPARAMS ;
typedef int BOOL ;


 int TRUE ;
 size_t VBDISP_CALLGET ;
 int exec_script (int ,int ,TYPE_3__*,TYPE_4__*,int *) ;

__attribute__((used)) static BOOL run_terminator(vbdisp_t *This)
{
    DISPPARAMS dp = {0};

    if(This->terminator_ran)
        return TRUE;
    This->terminator_ran = TRUE;

    if(!This->desc->class_terminate_id)
        return TRUE;

    This->ref++;
    exec_script(This->desc->ctx, This->desc->funcs[This->desc->class_terminate_id].entries[VBDISP_CALLGET],
            This, &dp, ((void*)0));
    return !--This->ref;
}
