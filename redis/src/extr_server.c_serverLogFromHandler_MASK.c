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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* logfile; int verbosity; scalar_t__ daemonize; } ;

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,int) ; 
 TYPE_1__ server ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,char const*,int) ; 

void FUNC7(int level, const char *msg) {
    int fd;
    int log_to_stdout = server.logfile[0] == '\0';
    char buf[64];

    if ((level&0xff) < server.verbosity || (log_to_stdout && server.daemonize))
        return;
    fd = log_to_stdout ? STDOUT_FILENO :
                         FUNC3(server.logfile, O_APPEND|O_CREAT|O_WRONLY, 0644);
    if (fd == -1) return;
    FUNC2(buf,sizeof(buf),FUNC1());
    if (FUNC6(fd,buf,FUNC4(buf)) == -1) goto err;
    if (FUNC6(fd,":signal-handler (",17) == -1) goto err;
    FUNC2(buf,sizeof(buf),FUNC5(NULL));
    if (FUNC6(fd,buf,FUNC4(buf)) == -1) goto err;
    if (FUNC6(fd,") ",2) == -1) goto err;
    if (FUNC6(fd,msg,FUNC4(msg)) == -1) goto err;
    if (FUNC6(fd,"\n",1) == -1) goto err;
err:
    if (!log_to_stdout) FUNC0(fd);
}