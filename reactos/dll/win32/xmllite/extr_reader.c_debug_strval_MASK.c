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
typedef  int /*<<< orphan*/  xmlreader ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ strval ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,TYPE_1__ const*) ; 

__attribute__((used)) static inline const char* FUNC2(const xmlreader *reader, const strval *v)
{
    return FUNC0(FUNC1(reader, v), v->len);
}