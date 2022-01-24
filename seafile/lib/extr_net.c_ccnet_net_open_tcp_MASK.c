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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef  int evutil_socket_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC0 (int,struct sockaddr const*,int) ; 
 int FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ sockerrno ; 

evutil_socket_t
FUNC3 (const struct sockaddr *sa, int nonblock)
{
    evutil_socket_t s;
    int sa_len;

    if( (s = FUNC1(sa->sa_family, nonblock)) < 0 )
        return -1;

#ifndef WIN32
    if (sa->sa_family == AF_INET)
        sa_len = sizeof (struct sockaddr_in); 
    else
        sa_len = sizeof (struct sockaddr_in6);
#else
    if (sa->sa_family == AF_INET)
        sa_len = sizeof (struct sockaddr_in); 
    else
        return -1;
#endif


    if( (FUNC0(s, sa, sa_len) < 0)
#ifdef WIN32
        && (sockerrno != WSAEWOULDBLOCK)
#endif
        && (sockerrno != EINPROGRESS) )
    {
        FUNC2(s);
        s = -1;
    }

    return s;
}