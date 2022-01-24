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
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct chmHttpSlave {int fd; struct chmHttpServer* server; } ;
struct chmHttpServer {int socket; int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  one ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  _slave ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* config_bind ; 
 int config_port ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct chmHttpSlave*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC17(const char *filename)
{
    struct chmHttpServer        server;
    struct chmHttpSlave        *slave;
    struct sockaddr_in          bindAddr;
    int                         addrLen;
    pthread_t                   tid;
    int                         one = 1;

    /* open file */
    if ((server.file = FUNC2(filename)) == NULL)
    {
        FUNC5(stderr, "couldn't open file '%s'\n", filename);
        FUNC4(2);
    }

    /* create socket */
    server.socket = FUNC16(AF_INET, SOCK_STREAM, 0);
    FUNC11(&bindAddr, 0, sizeof(struct sockaddr_in));
    bindAddr.sin_family = AF_INET;
    bindAddr.sin_port = FUNC7(config_port);
    bindAddr.sin_addr.s_addr = FUNC8(config_bind);

    if (FUNC15 (server.socket, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one))) 
    {
        FUNC12 ("setsockopt");
        FUNC4(3);
    }

    if (FUNC1(server.socket, 
             (struct sockaddr *)&bindAddr,
             sizeof(struct sockaddr_in)) < 0)
    {
        FUNC3(server.socket);
        server.socket = -1;
        FUNC5(stderr, "couldn't bind to ip %s port %d\n", config_bind, config_port);
        FUNC4(3);
    }

    /* listen for connections */
    FUNC9(server.socket, 75);
    addrLen = sizeof(struct sockaddr);
    while(1)
    {
        slave = (struct chmHttpSlave *)FUNC10(sizeof(struct chmHttpSlave));
        slave->server = &server;
        slave->fd = FUNC0(server.socket, (struct sockaddr *)&bindAddr, &addrLen);
        if (slave->fd == -1)
            break;

        FUNC13(&tid, NULL, _slave, (void *)slave);
        FUNC14(tid);
    }
    FUNC6(slave);
}