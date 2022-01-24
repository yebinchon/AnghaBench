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
struct connection_ops {int /*<<< orphan*/  (* is_server_listening ) (char const*) ;} ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  RPC_S_INVALID_BINDING ; 
 struct connection_ops* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

RPC_STATUS FUNC3(const char *protseq, const char *endpoint)
{
  const struct connection_ops *ops;

  ops = FUNC1(protseq);
  if (!ops)
  {
    FUNC0("not supported for protseq %s\n", protseq);
    return RPC_S_INVALID_BINDING;
  }

  return ops->is_server_listening(endpoint);
}