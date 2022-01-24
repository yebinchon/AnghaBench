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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  send_dir ;
struct TYPE_4__ {scalar_t__ datalen; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ send_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC3(send_context* context, uint16_t type, send_dir* parent, char* name, uint16_t namelen) {
    uint16_t len = FUNC1(parent, namelen);

    FUNC2(context, type, NULL, len);

    if (len > 0)
        FUNC0((char*)&context->data[context->datalen - len], parent, name, namelen);
}