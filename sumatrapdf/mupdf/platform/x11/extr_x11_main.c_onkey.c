
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {scalar_t__ issearching; } ;


 scalar_t__ advance_scheduled ;
 TYPE_1__ gapp ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ justcopied ;
 int pdfapp_onkey (TYPE_1__*,int,int) ;
 scalar_t__ showingmessage ;
 int showingpage ;
 int timeradd (struct timeval*,struct timeval*,int *) ;
 int tmo_at ;
 int winrepaint (TYPE_1__*) ;

__attribute__((used)) static void onkey(int c, int modifiers)
{
 advance_scheduled = 0;

 if (justcopied)
 {
  justcopied = 0;
  winrepaint(&gapp);
 }

 if (!gapp.issearching && c == 'P')
 {
  struct timeval now;
  struct timeval tmo;
  tmo.tv_sec = 2;
  tmo.tv_usec = 0;
  gettimeofday(&now, ((void*)0));
  timeradd(&now, &tmo, &tmo_at);
  showingpage = 1;
  winrepaint(&gapp);
  return;
 }

 pdfapp_onkey(&gapp, c, modifiers);

 if (gapp.issearching)
 {
  showingpage = 0;
  showingmessage = 0;
 }
}
