
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pollfd {int fd; int events; } ;
typedef int location_t ;
typedef int location_state_t ;
struct TYPE_3__ {int (* get_fd ) (int *) ;int (* handle ) (int *,int *,int*) ;} ;
typedef TYPE_1__ location_provider_t ;


 int POLLIN ;
 int _ (char*) ;
 int fputs (int ,int ) ;
 int perror (char*) ;
 int poll (struct pollfd*,int,int) ;
 int stderr ;
 int stub1 (int *) ;
 int stub2 (int *,int *,int*) ;
 int systemtime_get_time (double*) ;

__attribute__((used)) static int
provider_get_location(
 const location_provider_t *provider, location_state_t *state,
 int timeout, location_t *loc)
{
 int available = 0;
 struct pollfd pollfds[1];
 while (!available) {
  int loc_fd = provider->get_fd(state);
  if (loc_fd >= 0) {


   double now;
   int r = systemtime_get_time(&now);
   if (r < 0) {
    fputs(_("Unable to read system time.\n"),
          stderr);
    return -1;
   }


   pollfds[0].fd = loc_fd;
   pollfds[0].events = POLLIN;
   r = poll(pollfds, 1, timeout);
   if (r < 0) {
    perror("poll");
    return -1;
   } else if (r == 0) {
    return 0;
   }

   double later;
   r = systemtime_get_time(&later);
   if (r < 0) {
    fputs(_("Unable to read system time.\n"),
          stderr);
    return -1;
   }


   if (timeout >= 0) {
    timeout -= (later - now) * 1000;
    timeout = timeout < 0 ? 0 : timeout;
   }
  }


  int r = provider->handle(state, loc, &available);
  if (r < 0) return -1;
 }

 return 1;
}
