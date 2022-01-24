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
struct flock {scalar_t__ l_type; scalar_t__ l_start; scalar_t__ l_len; int l_pid; int /*<<< orphan*/  l_whence; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_GETLK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ F_WRLCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,char*) ; 

__attribute__((used)) static int FUNC2(int fd, off_t lwr, off_t upr){
  int cnt = 0;
  struct flock x;

  x.l_type = F_WRLCK;
  x.l_whence = SEEK_SET;
  x.l_start = lwr;
  x.l_len = upr-lwr;
  FUNC0(fd, F_GETLK, &x);
  if( x.l_type==F_UNLCK ) return 0;
  FUNC1("start: %-12d len: %-5d pid: %-5d type: %s\n",
       (int)x.l_start, (int)x.l_len,
       x.l_pid, x.l_type==F_WRLCK ? "WRLCK" : "RDLCK");
  cnt++;
  if( x.l_start>lwr ){
    cnt += FUNC2(fd, lwr, x.l_start-1);
  }
  if( x.l_start+x.l_len<upr ){
    cnt += FUNC2(fd, x.l_start+x.l_len+1, upr);
  }
  return cnt;
}