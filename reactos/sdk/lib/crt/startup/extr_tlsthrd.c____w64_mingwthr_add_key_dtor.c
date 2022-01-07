
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* dtor ) (void*) ;struct TYPE_3__* next; int key; } ;
typedef TYPE_1__ __mingwthr_key_t ;
typedef int DWORD ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int __mingwthr_cs ;
 scalar_t__ __mingwthr_cs_init ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__* key_dtor_list ;

int
___w64_mingwthr_add_key_dtor (DWORD key, void (*dtor)(void *))
{
  __mingwthr_key_t *new_key;

  if (__mingwthr_cs_init == 0)
    return 0;
  new_key = (__mingwthr_key_t *) calloc (1, sizeof (__mingwthr_key_t));
  if (new_key == ((void*)0))
    return -1;

  new_key->key = key;
  new_key->dtor = dtor;

  EnterCriticalSection (&__mingwthr_cs);

  new_key->next = key_dtor_list;
  key_dtor_list = new_key;

  LeaveCriticalSection (&__mingwthr_cs);
  return 0;
}
