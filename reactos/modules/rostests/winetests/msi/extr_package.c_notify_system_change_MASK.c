#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  szDescription; int /*<<< orphan*/  llSequenceNumber; int /*<<< orphan*/  dwRestorePtType; int /*<<< orphan*/  dwEventType; } ;
struct TYPE_6__ {int /*<<< orphan*/  llSequenceNumber; } ;
typedef  TYPE_1__ STATEMGRSTATUS ;
typedef  TYPE_2__ RESTOREPOINTINFOA ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  APPLICATION_INSTALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static BOOL FUNC2(DWORD event_type, STATEMGRSTATUS *status)
{
    RESTOREPOINTINFOA spec;

    spec.dwEventType = event_type;
    spec.dwRestorePtType = APPLICATION_INSTALL;
    spec.llSequenceNumber = status->llSequenceNumber;
    FUNC0(spec.szDescription, "msitest restore point");

    return FUNC1(&spec, status);
}