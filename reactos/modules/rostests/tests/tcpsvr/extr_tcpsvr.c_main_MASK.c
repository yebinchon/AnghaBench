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
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  servAddr ;
typedef  int /*<<< orphan*/  cliAddr ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int ERROR ; 
 int FALSE ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int MAX_MSG ; 
 int SERVER_PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (int,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15 (int argc, char *argv[]) {

  WORD       wVersionRequested;
  WSADATA    WsaData;
  INT	     Status;
  int sd, newSd, cliLen;

  struct sockaddr_in cliAddr, servAddr;
  char line[MAX_MSG];

    wVersionRequested = FUNC0(2, 2);

    Status = FUNC2(wVersionRequested, &WsaData);
    if (Status != 0) {
        FUNC12("Could not initialize winsock dll.\n");
        return FALSE;
    }

  /* create socket */
  sd = FUNC14(AF_INET, SOCK_STREAM, 0);
   if(sd<0) {
    FUNC11("cannot open socket ");
    FUNC1();
    return ERROR;
  }

  /* bind server port */
  servAddr.sin_family = AF_INET;
  servAddr.sin_addr.s_addr = FUNC5(INADDR_ANY);
  servAddr.sin_port = FUNC6(SERVER_PORT);

  if(FUNC4(sd, (struct sockaddr *) &servAddr, sizeof(servAddr))<0) {
    FUNC11("cannot bind port ");
    FUNC1();
    return ERROR;
  }

  FUNC8(sd,5);

  while(1) {

    FUNC12("%s: \n"
          "To start test, Please telnet to localhost (127.0.0.1) port 23 \n"
          "When connected input raw data followed by End of Line\n"
          "Test is now running on TCP port %u\n",argv[0],SERVER_PORT);

    cliLen = sizeof(cliAddr);
    newSd = FUNC3(sd, (struct sockaddr *) &cliAddr, &cliLen);
    if(newSd<0) {
      FUNC11("cannot accept connection ");
      FUNC1();
      return ERROR;
    }

    /* init line */
    FUNC9(line,0x0,MAX_MSG);

    /* receive segments */
    while(FUNC13(newSd,line)!=ERROR) {

      FUNC12("%s: received from %s:TCP%d : %s\n", argv[0],
	     FUNC7(cliAddr.sin_addr),
	     FUNC10(cliAddr.sin_port), line);
      /* init line */
      FUNC9(line,0x0,MAX_MSG);

    } /* while(read_line) */

  } /* while (1) */

}