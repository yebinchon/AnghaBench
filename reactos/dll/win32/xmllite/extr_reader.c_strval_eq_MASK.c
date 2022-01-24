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
typedef  int /*<<< orphan*/  xmlreader ;
struct TYPE_5__ {int len; } ;
typedef  TYPE_1__ strval ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,TYPE_1__ const*) ; 

__attribute__((used)) static inline int FUNC2(const xmlreader *reader, const strval *str1, const strval *str2)
{
    if (str1->len != str2->len) return 0;
    return !FUNC0(FUNC1(reader, str1), FUNC1(reader, str2), str1->len*sizeof(WCHAR));
}