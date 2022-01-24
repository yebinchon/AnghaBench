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
struct TYPE_4__ {int sinkAspects; int sinkAdviseFlag; int /*<<< orphan*/ * sinkInterface; } ;
typedef  int /*<<< orphan*/  LONG ;
typedef  TYPE_1__ DataCache ;
typedef  int DWORD ;

/* Variables and functions */
 int ADVF_ONLYONCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
  DataCache* this,
  DWORD      aspect,
  LONG       lindex)
{
  FUNC2("(%p, %x, %d)\n", this, aspect, lindex);

  /*
   * The sink supplies a filter when it registers
   * we make sure we only send the notifications when that
   * filter matches.
   */
  if ((this->sinkAspects & aspect) != 0)
  {
    if (this->sinkInterface != NULL)
    {
      FUNC0(this->sinkInterface,
			       aspect,
			       lindex);

      /*
       * Some sinks want to be unregistered automatically when
       * the first notification goes out.
       */
      if ( (this->sinkAdviseFlag & ADVF_ONLYONCE) != 0)
      {
	FUNC1(this->sinkInterface);

	this->sinkInterface  = NULL;
	this->sinkAspects    = 0;
	this->sinkAdviseFlag = 0;
      }
    }
  }
}