
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_name_size; size_t tp_len; int tp_state; int * tp_name; int tp_pri; void* tp_args; int tp_func; int tp_magic; } ;
typedef TYPE_1__ thread_priv_t ;
typedef int thread_func_t ;
struct task_struct {int dummy; } ;
typedef int proc_t ;
typedef int pri_t ;
typedef int kthread_t ;
typedef int * caddr_t ;


 int ASSERT (int ) ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int KM_PUSHPAGE ;
 int TP_MAGIC ;
 void* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 struct task_struct* spl_kthread_create (int ,void*,char*,int *) ;
 int strlen (char const*) ;
 int strncpy (int *,char const*,int) ;
 char* strstr (int *,char*) ;
 int thread_generic_wrapper ;
 int wake_up_process (struct task_struct*) ;

kthread_t *
__thread_create(caddr_t stk, size_t stksize, thread_func_t func,
    const char *name, void *args, size_t len, proc_t *pp, int state, pri_t pri)
{
 thread_priv_t *tp;
 struct task_struct *tsk;
 char *p;



 ASSERT(stk == ((void*)0));

 tp = kmem_alloc(sizeof (thread_priv_t), KM_PUSHPAGE);
 if (tp == ((void*)0))
  return (((void*)0));

 tp->tp_magic = TP_MAGIC;
 tp->tp_name_size = strlen(name) + 1;

 tp->tp_name = kmem_alloc(tp->tp_name_size, KM_PUSHPAGE);
 if (tp->tp_name == ((void*)0)) {
  kmem_free(tp, sizeof (thread_priv_t));
  return (((void*)0));
 }

 strncpy(tp->tp_name, name, tp->tp_name_size);





 p = strstr(tp->tp_name, "_thread");
 if (p)
  p[0] = '\0';

 tp->tp_func = func;
 tp->tp_args = args;
 tp->tp_len = len;
 tp->tp_state = state;
 tp->tp_pri = pri;

 tsk = spl_kthread_create(thread_generic_wrapper, (void *)tp,
     "%s", tp->tp_name);
 if (IS_ERR(tsk))
  return (((void*)0));

 wake_up_process(tsk);
 return ((kthread_t *)tsk);
}
