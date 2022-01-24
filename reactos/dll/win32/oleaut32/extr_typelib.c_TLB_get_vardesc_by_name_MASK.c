#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ TLBVarDesc ;
typedef  int /*<<< orphan*/  OLECHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline TLBVarDesc *FUNC2(TLBVarDesc *vardescs,
        UINT n, const OLECHAR *name)
{
    while(n){
        if(!FUNC1(FUNC0(vardescs->Name), name))
            return vardescs;
        ++vardescs;
        --n;
    }
    return NULL;
}