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
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * default_domain; } ;
typedef  TYPE_1__ RuntimeHost ;
typedef  int /*<<< orphan*/  MonoDomain ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC3(RuntimeHost *This, MonoDomain **result)
{
    HRESULT res=S_OK;

    FUNC0(&This->lock);

    if (This->default_domain) goto end;

    res = FUNC2(This, &This->default_domain);

end:
    *result = This->default_domain;

    FUNC1(&This->lock);

    return res;
}