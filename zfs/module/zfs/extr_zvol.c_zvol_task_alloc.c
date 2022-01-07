
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name2; int name1; int pool; int value; int op; } ;
typedef TYPE_1__ zvol_task_t ;
typedef int zvol_async_op_t ;
typedef int uint64_t ;


 int KM_SLEEP ;
 int MAXNAMELEN ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 char* strchr (char const*,char) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static zvol_task_t *
zvol_task_alloc(zvol_async_op_t op, const char *name1, const char *name2,
    uint64_t value)
{
 zvol_task_t *task;
 char *delim;


 if (name1[0] == '$')
  return (((void*)0));

 task = kmem_zalloc(sizeof (zvol_task_t), KM_SLEEP);
 task->op = op;
 task->value = value;
 delim = strchr(name1, '/');
 strlcpy(task->pool, name1, delim ? (delim - name1 + 1) : MAXNAMELEN);

 strlcpy(task->name1, name1, MAXNAMELEN);
 if (name2 != ((void*)0))
  strlcpy(task->name2, name2, MAXNAMELEN);

 return (task);
}
