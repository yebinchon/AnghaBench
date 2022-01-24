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
struct TYPE_3__ {int /*<<< orphan*/  unk_impl; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  TYPE_1__ HTMLDocument ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static inline HRESULT FUNC1(HTMLDocument *This, REFIID riid, void **ppv)
{
    return FUNC0(This->unk_impl, riid, ppv);
}