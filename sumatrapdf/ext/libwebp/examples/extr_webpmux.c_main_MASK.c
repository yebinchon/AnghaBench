#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char const**) ; 
 int FUNC4 (int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(int argc, const char* argv[]) {
  Config config;
  int ok;

  FUNC3(argc, argv);

  ok = FUNC4(argc - 1, argv + 1, &config, FUNC2());
  if (ok) {
    ok = FUNC6(&config);
  } else {
    FUNC5();
  }
  FUNC0(&config);
  FUNC1(!ok);
}