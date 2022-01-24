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
struct TYPE_3__ {int /*<<< orphan*/  value_len; int /*<<< orphan*/  value; int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ HttpHeader ;

/* Variables and functions */
 int /*<<< orphan*/  COLON ; 
 int /*<<< orphan*/  SPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(HttpHeader *header, StringInfo buf)
{
	FUNC0(buf, header->name, header->name_len);
	FUNC1(COLON, buf);
	FUNC1(SPACE, buf);
	FUNC0(buf, header->value, header->value_len);
}