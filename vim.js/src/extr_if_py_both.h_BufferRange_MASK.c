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
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyInt ;
typedef  TYPE_1__ BufferObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC3(BufferObject *self, PyObject *args)
{
    PyInt start;
    PyInt end;

    if (FUNC0(self))
	return NULL;

    if (!FUNC1(args, "nn", &start, &end))
	return NULL;

    return FUNC2(self->buf, start, end);
}