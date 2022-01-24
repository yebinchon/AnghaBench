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
struct TYPE_4__ {struct TYPE_4__* time_buffer; struct TYPE_4__* wcserror_buffer; struct TYPE_4__* strerror_buffer; struct TYPE_4__* wasctime_buffer; struct TYPE_4__* asctime_buffer; struct TYPE_4__* efcvt_buffer; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ thread_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msvcrt_tls_index ; 

void FUNC4(void)
{
  thread_data_t *tls = FUNC3(msvcrt_tls_index);

  if (tls)
  {
    FUNC0(tls->handle);
    FUNC2(FUNC1(),0,tls->efcvt_buffer);
    FUNC2(FUNC1(),0,tls->asctime_buffer);
    FUNC2(FUNC1(),0,tls->wasctime_buffer);
    FUNC2(FUNC1(),0,tls->strerror_buffer);
    FUNC2(FUNC1(),0,tls->wcserror_buffer);
    FUNC2(FUNC1(),0,tls->time_buffer);
    //if(tls->have_locale) {
    //    free_locinfo(tls->locinfo);
    //    free_mbcinfo(tls->mbcinfo);
    //}
  }
  FUNC2(FUNC1(), 0, tls);
}