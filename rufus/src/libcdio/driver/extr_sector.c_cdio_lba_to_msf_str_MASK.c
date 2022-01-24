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
struct TYPE_4__ {scalar_t__ f; scalar_t__ s; scalar_t__ m; } ;
typedef  TYPE_1__ msf_t ;
typedef  scalar_t__ lba_t ;

/* Variables and functions */
 scalar_t__ CDIO_INVALID_LBA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (char*) ; 

char *
FUNC3 (lba_t lba)
{

  if (CDIO_INVALID_LBA == lba) {
    return FUNC2("*INVALID");
  } else {
    msf_t msf;
    msf.m = msf.s = msf.f = 0;
    FUNC0 (lba, &msf);
    return FUNC1(&msf);
  }
}