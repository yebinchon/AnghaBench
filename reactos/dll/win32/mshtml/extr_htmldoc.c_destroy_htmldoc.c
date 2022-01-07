
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cp_container; int task_magic; } ;
typedef TYPE_1__ HTMLDocument ;


 int ConnectionPointContainer_Destroy (int *) ;
 int remove_target_tasks (int ) ;

__attribute__((used)) static void destroy_htmldoc(HTMLDocument *This)
{
    remove_target_tasks(This->task_magic);

    ConnectionPointContainer_Destroy(&This->cp_container);
}
