#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_5__* adns_state ;
struct TYPE_13__ {scalar_t__ head; } ;
struct TYPE_12__ {scalar_t__ head; } ;
struct TYPE_11__ {scalar_t__ head; } ;
struct TYPE_10__ {scalar_t__ head; } ;
struct TYPE_14__ {int udpsocket; int tcpsocket; int /*<<< orphan*/  tcprecv; int /*<<< orphan*/  tcpsend; TYPE_4__ output; TYPE_3__ childw; TYPE_2__ tcpw; TYPE_1__ udpw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  cc_entex ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 

void FUNC7(adns_state ads) {
  FUNC1(ads,0,cc_entex);
  for (;;) {
    if (ads->udpw.head) FUNC3(ads->udpw.head);
    else if (ads->tcpw.head) FUNC3(ads->tcpw.head);
    else if (ads->childw.head) FUNC3(ads->childw.head);
    else if (ads->output.head) FUNC3(ads->output.head);
    else break;
  }
  FUNC4(ads->udpsocket);
  if (ads->tcpsocket != -1) FUNC4(ads->tcpsocket);
  FUNC2(&ads->tcpsend);
  FUNC2(&ads->tcprecv);
  FUNC6(ads);
  FUNC5(ads);
#ifdef ADNS_JGAA_WIN32
  WSACleanup();
#endif /* WIN32 */

}