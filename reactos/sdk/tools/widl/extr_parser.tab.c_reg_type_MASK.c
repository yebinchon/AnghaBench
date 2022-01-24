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
struct TYPE_5__ {char const* c_name; } ;
typedef  TYPE_1__ type_t ;
struct rtype {char const* name; int t; struct rtype* next; TYPE_1__* type; } ;
struct namespace {struct rtype** type_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char const* FUNC2 (struct namespace*,char*,char*,char const*) ; 
 struct namespace global_namespace ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (struct namespace*) ; 
 int tsSTRUCT ; 
 int tsUNION ; 
 struct rtype* FUNC5 (int) ; 

type_t *FUNC6(type_t *type, const char *name, struct namespace *namespace, int t)
{
  struct rtype *nt;
  int hash;
  if (!name) {
    FUNC0("registering named type without name\n");
    return type;
  }
  if (!namespace)
    namespace = &global_namespace;
  hash = FUNC3(name);
  nt = FUNC5(sizeof(struct rtype));
  nt->name = name;
  if (FUNC4(namespace))
    type->c_name = name;
  else
    type->c_name = FUNC2(namespace, "__x_", "_C", name);
  nt->type = type;
  nt->t = t;
  nt->next = namespace->type_hash[hash];
  namespace->type_hash[hash] = nt;
  if ((t == tsSTRUCT || t == tsUNION))
    FUNC1(type);
  return type;
}