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
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static RPC_STATUS FUNC3(const char *endpoint)
{
  char *pipe_name;
  RPC_STATUS status;

  pipe_name = FUNC2(endpoint);
  status = FUNC1(pipe_name);
  FUNC0(pipe_name);
  return status;
}