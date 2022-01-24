#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* xSize ) (void*) ;int /*<<< orphan*/  (* xFree ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 TYPE_1__ memtraceBase ; 
 scalar_t__ memtraceOut ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(void *p){
  if( p==0 ) return;
  if( memtraceOut ){
    FUNC0(memtraceOut, "MEMTRACE: free %d bytes\n", memtraceBase.xSize(p));
  }
  memtraceBase.xFree(p);
}