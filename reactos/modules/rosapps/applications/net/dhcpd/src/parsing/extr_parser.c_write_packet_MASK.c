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
struct in_addr {int s_addr; } ;
struct sockaddr_in {struct in_addr sin_addr; int /*<<< orphan*/  sin_zero; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  enable ;
typedef  int /*<<< orphan*/  DHCPMESSAGE ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct hostent* FUNC3 (char*) ; 
 void* FUNC4 (int) ; 
 char* FUNC5 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC12 (char*,char*) ; 

int FUNC13( DHCPMESSAGE *dhcpm, char *name )
{
  int sockfd;
  struct sockaddr_in their_addr; // connector's address information
  struct hostent *he;
  int numbytes;
  int enable = 1;

  FUNC2( stdout, "write_packet [begin]\n" );

  if( !dhcpm )
    return -1;

  if ((sockfd = FUNC11(AF_INET, SOCK_DGRAM, 0)) == -1) {
    FUNC7("socket");
    FUNC1(1);
  }

  if( FUNC10( sockfd, SOL_SOCKET, SO_BROADCAST, &enable, sizeof( enable )) == -1 )
    {
      FUNC7("setsockopt");
      FUNC1(1);
    }

  if( FUNC12( "255.255.255.255", name ) )
    {
      if ((he=FUNC3(name)) == NULL) {  // get the host info
	FUNC7("gethostbyname");
	FUNC2( stdout, "Unknown host %s \n", name );
	return -1;
      }
      their_addr.sin_family = AF_INET;     // host byte order
      their_addr.sin_port = FUNC4(68); // short, network byte order
      their_addr.sin_addr = *((struct in_addr *)he->h_addr);
    } else {
      their_addr.sin_family = AF_INET;     // host byte order
      their_addr.sin_port = FUNC4(68); // short, network byte order
      their_addr.sin_addr.s_addr = 0xFFFFFFFF;
    }

  FUNC2( stdout, "IP a buscar: %s \n", name );
  FUNC6(&(their_addr.sin_zero), '\0', 8); // zero the rest of the struct

  if ((numbytes=FUNC9(sockfd, dhcpm, sizeof(DHCPMESSAGE), 0,
		       (struct sockaddr *)&their_addr, sizeof(struct sockaddr))) == -1) {
    FUNC7("sendto");
    FUNC1(1);
  }

  FUNC8("sent %d bytes to %s\n", numbytes,
	 FUNC5(their_addr.sin_addr));

  FUNC0(sockfd);

  FUNC2( stdout, "write_packet [end]\n" );

  return 0;
}