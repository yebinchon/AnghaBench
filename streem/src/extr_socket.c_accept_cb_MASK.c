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
typedef  int /*<<< orphan*/  writer_addr ;
struct socket_data {int /*<<< orphan*/  sock; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_6__ {struct socket_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  int socklen_t ;

/* Variables and functions */
 int STRM_IO_FLUSH ; 
 int STRM_IO_READ ; 
 int STRM_IO_WRITE ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int (*) (TYPE_1__*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static int
FUNC6(strm_stream* task, strm_value data)
{
  struct socket_data *sd = task->data;
  struct sockaddr_in writer_addr;
  socklen_t writer_len;
  int sock;

  FUNC2(&writer_addr, 0, sizeof(writer_addr));
  writer_len = sizeof(writer_addr);
  sock = FUNC0(sd->sock, (struct sockaddr *)&writer_addr, &writer_len);
  if (sock < 0) {
    FUNC1(sock);
    FUNC5(task, "socket error: listen");
    return STRM_NG;
  }

  FUNC3(task, FUNC4(sock, STRM_IO_READ|STRM_IO_WRITE|STRM_IO_FLUSH),
               sd->sock, accept_cb);
  return STRM_OK;
}