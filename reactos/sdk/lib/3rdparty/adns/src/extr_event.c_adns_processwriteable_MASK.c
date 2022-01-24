#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  TYPE_2__* adns_state ;
struct TYPE_12__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  used; } ;
struct TYPE_10__ {int used; int /*<<< orphan*/  buf; } ;
struct TYPE_11__ {int tcpstate; TYPE_1__ tcpsend; int /*<<< orphan*/  tcpsocket; TYPE_5__ tcprecv; int /*<<< orphan*/  tcprecv_skip; } ;
typedef  int /*<<< orphan*/  ADNS_SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  ADNS_CAPTURE_ERRNO ; 
 int /*<<< orphan*/  ADNS_CLEAR_ERRNO ; 
 int EAGAIN ; 
 int EINTR ; 
 int ENOMEM ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  cc_entex ; 
 int errno ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
#define  server_broken 131 
#define  server_connecting 130 
#define  server_disconnected 129 
#define  server_ok 128 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct timeval const) ; 

int FUNC13(adns_state ads, ADNS_SOCKET fd, const struct timeval *now) {
  int r;

  FUNC1(ads,0,cc_entex);

  switch (ads->tcpstate) {
  case server_disconnected:
  case server_broken:
    break;
  case server_connecting:
    if (fd != ads->tcpsocket) break;
    FUNC8(ads->tcprecv.used==0);
    FUNC8(ads->tcprecv_skip==0);
    for (;;) {
      if (!FUNC5(&ads->tcprecv,1)) { r= ENOMEM; goto xit; }
	  ADNS_CLEAR_ERRNO;
      r= FUNC6(ads->tcpsocket,&ads->tcprecv.buf,1);
	  ADNS_CAPTURE_ERRNO;
      if (r==0 || (r<0 && (errno==EAGAIN || errno==EWOULDBLOCK))) {
	FUNC12(ads,*now);
	r= 0; goto xit;
      }
      if (r>0) {
	FUNC4(ads,"connect/adns_socket_read","sent data before first request");
	r= 0; goto xit;
      }
      if (errno==EINTR) continue;
      if (FUNC9(errno)) { r= errno; goto xit; }
      FUNC4(ads,"connect/adns_socket_read",FUNC11(errno));
      r= 0; goto xit;
    } /* not reached */
  case server_ok:
    if (fd != ads->tcpsocket) break;
    while (ads->tcpsend.used) {
      FUNC2(ads);
	  ADNS_CLEAR_ERRNO;
      r= FUNC7(ads->tcpsocket,ads->tcpsend.buf,ads->tcpsend.used);
	  ADNS_CAPTURE_ERRNO;
      FUNC3(ads);
      if (r<0) {
	if (errno==EINTR) continue;
	if (errno==EAGAIN || errno==EWOULDBLOCK) { r= 0; goto xit; }
	if (FUNC9(errno)) { r= errno; goto xit; }
	FUNC4(ads,"adns_socket_write",FUNC11(errno));
	r= 0; goto xit;
      } else if (r>0) {
	ads->tcpsend.used -= r;
	FUNC10(ads->tcpsend.buf,ads->tcpsend.buf+r, (size_t) ads->tcpsend.used);
      }
    }
    r= 0;
    goto xit;
  default:
    FUNC0();
  }
  r= 0;
xit:
  FUNC1(ads,0,cc_entex);
  return r;
}