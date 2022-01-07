
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int runnable_proc_t ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ nsIRunnable_iface; int * arg2; int * arg1; int proc; TYPE_2__* doc; } ;
typedef TYPE_1__ nsRunnable ;
typedef int nsISupports ;
struct TYPE_8__ {int basedoc; } ;
typedef TYPE_2__ HTMLDocumentNode ;


 int content_utils ;
 TYPE_1__* heap_alloc_zero (int) ;
 int htmldoc_addref (int *) ;
 int nsIContentUtils_AddScriptRunner (int ,TYPE_3__*) ;
 int nsIRunnable_Release (TYPE_3__*) ;
 int nsISupports_AddRef (int *) ;
 int nsRunnableVtbl ;

__attribute__((used)) static void add_script_runner(HTMLDocumentNode *This, runnable_proc_t proc, nsISupports *arg1, nsISupports *arg2)
{
    nsRunnable *runnable;

    runnable = heap_alloc_zero(sizeof(*runnable));
    if(!runnable)
        return;

    runnable->nsIRunnable_iface.lpVtbl = &nsRunnableVtbl;
    runnable->ref = 1;

    htmldoc_addref(&This->basedoc);
    runnable->doc = This;
    runnable->proc = proc;

    if(arg1)
        nsISupports_AddRef(arg1);
    runnable->arg1 = arg1;

    if(arg2)
        nsISupports_AddRef(arg2);
    runnable->arg2 = arg2;

    nsIContentUtils_AddScriptRunner(content_utils, &runnable->nsIRunnable_iface);

    nsIRunnable_Release(&runnable->nsIRunnable_iface);
}
