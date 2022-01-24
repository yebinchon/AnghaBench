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
struct TYPE_4__ {struct TYPE_4__* psz_eas_event_code; struct TYPE_4__* psz_nature_of_activation; struct TYPE_4__* psz_alert_text; } ;
typedef  TYPE_1__ scte18_cea_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1( scte18_cea_t *p_cea )
{
    FUNC0( p_cea->psz_alert_text );
    FUNC0( p_cea->psz_nature_of_activation );
    FUNC0( p_cea->psz_eas_event_code );
    FUNC0( p_cea );
}