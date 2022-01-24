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
struct TYPE_2__ {int /*<<< orphan*/ * servername; scalar_t__ cancel_event; int /*<<< orphan*/  async_data; int /*<<< orphan*/ * session; int /*<<< orphan*/ * app_info; int /*<<< orphan*/ * out_request; int /*<<< orphan*/ * in_request; int /*<<< orphan*/  timer_cancelled; } ;
typedef  TYPE_1__ RpcConnection_http ;
typedef  int /*<<< orphan*/  RpcConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(RpcConnection *Connection)
{
  RpcConnection_http *httpc = (RpcConnection_http *) Connection;

  FUNC6("\n");

  FUNC5(httpc->timer_cancelled);
  if (httpc->in_request)
    FUNC3(httpc->in_request);
  httpc->in_request = NULL;
  if (httpc->out_request)
    FUNC3(httpc->out_request);
  httpc->out_request = NULL;
  if (httpc->app_info)
    FUNC3(httpc->app_info);
  httpc->app_info = NULL;
  if (httpc->session)
    FUNC3(httpc->session);
  httpc->session = NULL;
  FUNC4(httpc->async_data);
  if (httpc->cancel_event)
    FUNC0(httpc->cancel_event);
  FUNC2(FUNC1(), 0, httpc->servername);
  httpc->servername = NULL;

  return 0;
}