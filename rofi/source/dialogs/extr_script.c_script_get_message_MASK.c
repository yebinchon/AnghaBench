#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ ScriptModePrivateData ;
typedef  TYPE_2__ Mode ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC1 ( const Mode *sw )
{
    ScriptModePrivateData *pd = sw->private_data;
    return FUNC0 ( pd->message );
}