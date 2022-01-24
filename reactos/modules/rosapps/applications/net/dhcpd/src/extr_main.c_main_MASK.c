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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_zero; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  DHCPOPTIONS ;
typedef  int /*<<< orphan*/  DHCPMESSAGE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  MYPORT ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15( int argc, char *argv[] )
{
#ifdef __MINGW32__
  WSADATA wsaData;
  int nCode;
#endif
  int sockfd;
  struct sockaddr_in my_addr;
  struct sockaddr_in their_addr;
  int addr_len, numbytes;
  DHCPMESSAGE dhcpm;
  DHCPOPTIONS dhcpo;

#ifdef __MINGW32__
  if ((nCode = WSAStartup(MAKEWORD(1, 1), &wsaData)) != 0)
    {
      perror("WSAStartup");
      return 0;
    }
#endif

  if ((sockfd = FUNC14(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1) {
    FUNC11("socket");
    FUNC6(1);
  }

  FUNC8();

  my_addr.sin_family = AF_INET;
  my_addr.sin_port = FUNC7(MYPORT);
  my_addr.sin_addr.s_addr = INADDR_ANY;
  FUNC9(&(my_addr.sin_zero), '\0', 8);

  if (FUNC3(sockfd, (struct sockaddr *)&my_addr,
	   sizeof(struct sockaddr)) == -1) {
    FUNC11("bind");
    FUNC6(1);
  }

  addr_len = sizeof(struct sockaddr);
  while((numbytes=FUNC13(sockfd,&dhcpm, sizeof( DHCPMESSAGE ), 0,
			 (struct sockaddr *)&their_addr, &addr_len)) != -1) {
    /* Parse DHCP */
    FUNC5( &dhcpm, &dhcpo );
    if( FUNC10( &dhcpm, &dhcpo ) < 0 )
      continue;
    if( FUNC5( &dhcpm, &dhcpo ) < 0 )
      continue;
    if( FUNC12( &dhcpm, &dhcpo ) < 0 )
      continue;
  }

  FUNC4(sockfd);

#ifdef __MINGW32__
  WSACleanup();
#endif

  return 0;

}