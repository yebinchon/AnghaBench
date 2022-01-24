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
struct TYPE_4__ {struct TYPE_4__* long_date_time_format; struct TYPE_4__* date_time_format; struct TYPE_4__* time_format; struct TYPE_4__* long_date_format; struct TYPE_4__* date_format; struct TYPE_4__** abbrev_dayofweek; struct TYPE_4__** dayofweek; struct TYPE_4__** abbrev_month; struct TYPE_4__** month; } ;
typedef  TYPE_1__ _Locale_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(_Locale_time_t* ltime) {
  int i;
  if (!ltime) return;

  for (i = 0; i < 12; ++i) {
    if (ltime->month[i]) FUNC0(ltime->month[i]);
    if (ltime->abbrev_month[i]) FUNC0(ltime->abbrev_month[i]);
  }

  for (i = 0; i < 7; ++i) {
    if (ltime->dayofweek[i]) FUNC0(ltime->dayofweek[i]);
    if (ltime->abbrev_dayofweek[i]) FUNC0(ltime->abbrev_dayofweek[i]);
  }

  if (ltime->date_format) FUNC0(ltime->date_format);
  if (ltime->long_date_format) FUNC0(ltime->long_date_format);
  if (ltime->time_format) FUNC0(ltime->time_format);
  if (ltime->date_time_format) FUNC0(ltime->date_time_format);
  if (ltime->long_date_time_format) FUNC0(ltime->long_date_time_format);

  FUNC0(ltime);
}