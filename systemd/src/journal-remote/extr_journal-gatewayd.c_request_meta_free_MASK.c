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
struct MHD_Connection {int dummy; } ;
typedef  enum MHD_RequestTerminationCode { ____Placeholder_MHD_RequestTerminationCode } MHD_RequestTerminationCode ;
struct TYPE_3__ {struct TYPE_3__* cursor; int /*<<< orphan*/  tmp; int /*<<< orphan*/  journal; } ;
typedef  TYPE_1__ RequestMeta ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
                void *cls,
                struct MHD_Connection *connection,
                void **connection_cls,
                enum MHD_RequestTerminationCode toe) {

        RequestMeta *m = *connection_cls;

        if (!m)
                return;

        FUNC2(m->journal);

        FUNC1(m->tmp);

        FUNC0(m->cursor);
        FUNC0(m);
}