#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* name; struct namespace* namespace; } ;
typedef  TYPE_1__ type_t ;
struct namespace {int dummy; } ;
typedef  enum type_type { ____Placeholder_type_type } type_type ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*,struct namespace*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct namespace global_namespace ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,char*,struct namespace*,int) ; 

type_t *FUNC4(enum type_type type, char *name, struct namespace *namespace, int t)
{
  type_t *tp;
  if (!namespace)
    namespace = &global_namespace;
  if (name) {
    tp = FUNC0(name, namespace, t);
    if (tp) {
      FUNC1(name);
      return tp;
    }
  }
  tp = FUNC2(type);
  tp->name = name;
  tp->namespace = namespace;
  if (!name) return tp;
  return FUNC3(tp, name, namespace, t);
}