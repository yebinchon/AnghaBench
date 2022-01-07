
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unlink (char const*) ;

int
daemon_exit(const char *pidfile) {
 return unlink(pidfile);
}
