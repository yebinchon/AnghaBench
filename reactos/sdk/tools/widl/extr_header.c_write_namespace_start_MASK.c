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
struct namespace {int /*<<< orphan*/  name; struct namespace* parent; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct namespace*) ; 
 scalar_t__ use_abi_namespace ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,...) ; 

__attribute__((used)) static void FUNC2(FILE *header, struct namespace *namespace)
{
    if(FUNC0(namespace)) {
        if(use_abi_namespace)
            FUNC1(header, 1, "namespace ABI {");
        return;
    }

    FUNC2(header, namespace->parent);
    FUNC1(header, 1, "namespace %s {", namespace->name);
}