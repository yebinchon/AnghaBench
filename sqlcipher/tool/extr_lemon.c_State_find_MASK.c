#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct state* data; struct TYPE_3__* next; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ x3node ;
struct state {int dummy; } ;
struct config {int dummy; } ;
struct TYPE_4__ {int size; TYPE_1__** ht; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct config*) ; 
 int FUNC1 (struct config*) ; 
 TYPE_2__* x3a ; 

struct state *FUNC2(struct config *key)
{
  unsigned h;
  x3node *np;

  if( x3a==0 ) return 0;
  h = FUNC1(key) & (x3a->size-1);
  np = x3a->ht[h];
  while( np ){
    if( FUNC0(np->key,key)==0 ) break;
    np = np->next;
  }
  return np ? np->data : 0;
}