
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef int pdfapp_t ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_5__ {int tv_usec; int tv_sec; } ;


 int fz_strlcpy (int ,char*,int) ;
 int gettimeofday (struct timeval*,int *) ;
 int message ;
 int showingmessage ;
 scalar_t__ showingpage ;
 int timeradd (struct timeval*,TYPE_2__*,TYPE_1__*) ;
 TYPE_2__ tmo ;
 TYPE_1__ tmo_at ;

__attribute__((used)) static void showmessage(pdfapp_t *app, int timeout, char *msg)
{
 struct timeval now;

 showingmessage = 1;
 showingpage = 0;

 fz_strlcpy(message, msg, sizeof message);

 if ((!tmo_at.tv_sec && !tmo_at.tv_usec) || tmo.tv_sec < timeout)
 {
  tmo.tv_sec = timeout;
  tmo.tv_usec = 0;
  gettimeofday(&now, ((void*)0));
  timeradd(&now, &tmo, &tmo_at);
 }
}
