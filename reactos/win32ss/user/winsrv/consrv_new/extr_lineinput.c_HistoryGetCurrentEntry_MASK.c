#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {scalar_t__ NumEntries; size_t Position; TYPE_1__* Entries; } ;
struct TYPE_5__ {scalar_t__ Length; } ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  TYPE_2__* PHISTORY_BUFFER ;
typedef  int /*<<< orphan*/  PCONSOLE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC1(PCONSOLE Console, PUNICODE_STRING Entry)
{
    PHISTORY_BUFFER Hist = FUNC0(Console);

    if (!Hist || Hist->NumEntries == 0)
        Entry->Length = 0;
    else
        *Entry = Hist->Entries[Hist->Position];
}