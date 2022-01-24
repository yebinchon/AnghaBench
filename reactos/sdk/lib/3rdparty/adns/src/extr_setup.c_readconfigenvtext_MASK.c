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
typedef  TYPE_1__* adns_state ;
struct TYPE_6__ {int iflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int adns_if_noenv ; 
 char* FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,char const*) ; 

__attribute__((used)) static void FUNC3(adns_state ads, const char *envvar) {
  const char *textdata;

  if (ads->iflags & adns_if_noenv) {
    FUNC0(ads,-1,0,"not checking environment variable `%s'",envvar);
    return;
  }
  textdata= FUNC1(ads,envvar);
  if (textdata) FUNC2(ads,textdata,envvar);
}