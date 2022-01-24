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
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct vlc_tls_socket {int /*<<< orphan*/  fd; } ;
typedef  struct vlc_tls_socket vlc_tls_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(vlc_tls_t *tls)
{
    vlc_tls_socket_t *sock = (struct vlc_tls_socket *)tls;

    FUNC1(sock->fd);
    FUNC0(tls);
}