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
struct TYPE_3__ {scalar_t__ method; } ;
typedef  TYPE_1__ dictionary ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;

/* Variables and functions */
 scalar_t__ BinaryCompare ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline int FUNC3(const dictionary *dict, const VARIANT *key1, const VARIANT *key2)
{
    const WCHAR *str1, *str2;

    str1 = FUNC0(key1);
    str2 = FUNC0(key2);
    return dict->method == BinaryCompare ? FUNC1(str1, str2) : FUNC2(str1, str2);
}