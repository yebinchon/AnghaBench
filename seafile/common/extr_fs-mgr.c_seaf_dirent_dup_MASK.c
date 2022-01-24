#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* modifier; void* name; } ;
typedef  TYPE_1__ SeafDirent ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int) ; 
 void* FUNC1 (void*) ; 

SeafDirent *
FUNC2 (SeafDirent *dent)
{
    SeafDirent *new_dent;

    new_dent = FUNC0 (dent, sizeof(SeafDirent));
    new_dent->name = FUNC1(dent->name);
    new_dent->modifier = FUNC1(dent->modifier);

    return new_dent;
}