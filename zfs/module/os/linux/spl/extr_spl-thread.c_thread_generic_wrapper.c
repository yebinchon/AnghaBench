
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tp_magic; void (* tp_func ) (void*) ;int tp_name_size; struct TYPE_3__* tp_name; int tp_pri; int tp_state; void* tp_args; } ;
typedef TYPE_1__ thread_priv_t ;
typedef int kthread_t ;


 int ASSERT (int) ;
 int PRIO_TO_NICE (int ) ;
 scalar_t__ TP_MAGIC ;
 scalar_t__ current ;
 int kmem_free (TYPE_1__*,int) ;
 int set_current_state (int ) ;
 int set_user_nice (int *,int ) ;

__attribute__((used)) static int
thread_generic_wrapper(void *arg)
{
 thread_priv_t *tp = (thread_priv_t *)arg;
 void (*func)(void *);
 void *args;

 ASSERT(tp->tp_magic == TP_MAGIC);
 func = tp->tp_func;
 args = tp->tp_args;
 set_current_state(tp->tp_state);
 set_user_nice((kthread_t *)current, PRIO_TO_NICE(tp->tp_pri));
 kmem_free(tp->tp_name, tp->tp_name_size);
 kmem_free(tp, sizeof (thread_priv_t));

 if (func)
  func(args);

 return (0);
}
