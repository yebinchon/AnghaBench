#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void (* dtor ) (void*) ;struct TYPE_3__* next; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ __mingwthr_key_t ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __mingwthr_cs ; 
 scalar_t__ __mingwthr_cs_init ; 
 scalar_t__ FUNC2 (int,int) ; 
 TYPE_1__* key_dtor_list ; 

int
FUNC3 (DWORD key, void (*dtor)(void *))
{
  __mingwthr_key_t *new_key;

  if (__mingwthr_cs_init == 0)
    return 0;
  new_key = (__mingwthr_key_t *) FUNC2 (1, sizeof (__mingwthr_key_t));
  if (new_key == NULL)
    return -1;

  new_key->key = key;
  new_key->dtor = dtor;

  FUNC0 (&__mingwthr_cs);

  new_key->next = key_dtor_list;
  key_dtor_list = new_key;

  FUNC1 (&__mingwthr_cs);
  return 0;
}