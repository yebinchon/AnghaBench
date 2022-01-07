
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct pollfd {int events; int fd; } ;
typedef int sd_journal ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;
 int poll (struct pollfd*,int,int) ;
 int sd_journal_get_events (int *) ;
 int sd_journal_get_fd (int *) ;
 int sd_journal_get_timeout (int *,scalar_t__*) ;
 int sd_journal_process (int *) ;

int wait_for_changes(sd_journal *j) {
  uint64_t t;
  int msec;
  struct pollfd pollfd;

  sd_journal_get_timeout(j, &t);
  if (t == (uint64_t) -1)
    msec = -1;
  else {
    struct timespec ts;
    uint64_t n;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    n = (uint64_t) ts.tv_sec * 1000000 + ts.tv_nsec / 1000;
    msec = t > n ? (int) ((t - n + 999) / 1000) : 0;
  }

  pollfd.fd = sd_journal_get_fd(j);
  pollfd.events = sd_journal_get_events(j);
  poll(&pollfd, 1, msec);
  return sd_journal_process(j);
}
