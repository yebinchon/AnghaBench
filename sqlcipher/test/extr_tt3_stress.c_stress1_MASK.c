#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Threadset ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  stress_thread_1 ; 
 int /*<<< orphan*/  stress_thread_2 ; 
 int /*<<< orphan*/  stress_thread_3 ; 
 int /*<<< orphan*/  stress_thread_4 ; 
 int /*<<< orphan*/  stress_thread_5 ; 

__attribute__((used)) static void FUNC5(int nMs){
  Error err = {0};
  Threadset threads = {0};

  FUNC3(&err, nMs);
  FUNC4(1);

  FUNC1(&err, &threads, stress_thread_1, 0);
  FUNC1(&err, &threads, stress_thread_1, 0);

  FUNC1(&err, &threads, stress_thread_2, 0);
  FUNC1(&err, &threads, stress_thread_2, 0);

  FUNC1(&err, &threads, stress_thread_3, 0);
  FUNC1(&err, &threads, stress_thread_3, 0);

  FUNC1(&err, &threads, stress_thread_4, 0);
  FUNC1(&err, &threads, stress_thread_4, 0);

  FUNC1(&err, &threads, stress_thread_5, 0);
  FUNC1(&err, &threads, stress_thread_5, (void*)1);

  FUNC0(&err, &threads);
  FUNC4(0);

  FUNC2(&err);
}