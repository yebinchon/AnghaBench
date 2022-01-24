#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void (* free ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ ME_String ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static ME_String *FUNC1( void (*free)(ME_String *) )
{
  ME_String *s = FUNC0( sizeof(*s) );

  if (s) s->free = free;
  return s;
}