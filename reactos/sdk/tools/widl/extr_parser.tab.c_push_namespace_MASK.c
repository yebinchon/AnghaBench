#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct namespace {int /*<<< orphan*/  type_hash; int /*<<< orphan*/  children; int /*<<< orphan*/  entry; struct namespace* parent; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct namespace* current_namespace ; 
 struct namespace* FUNC0 (struct namespace*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct namespace* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(const char *name)
{
  struct namespace *namespace;

  namespace = FUNC0(current_namespace, name);
  if(!namespace) {
    namespace = FUNC4(sizeof(*namespace));
    namespace->name = FUNC5(name);
    namespace->parent = current_namespace;
    FUNC1(&current_namespace->children, &namespace->entry);
    FUNC2(&namespace->children);
    FUNC3(namespace->type_hash, 0, sizeof(namespace->type_hash));
  }

  current_namespace = namespace;
}