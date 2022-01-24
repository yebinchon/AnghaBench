#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_6__ {scalar_t__* cur; } ;
struct TYPE_5__ {TYPE_3__* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC2 (xmlParserCtxtPtr ctxt) {
    FUNC1(ctxt->input);
    if (*ctxt->input->cur == 0)
        FUNC0(ctxt->input, INPUT_CHUNK);
}