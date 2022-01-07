
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int dummy; } ;


 int alerts_check_activity (struct window*) ;
 int alerts_check_bell (struct window*) ;
 int alerts_check_silence (struct window*) ;

__attribute__((used)) static int
alerts_check_all(struct window *w)
{
 int alerts;

 alerts = alerts_check_bell(w);
 alerts |= alerts_check_activity(w);
 alerts |= alerts_check_silence(w);
 return (alerts);
}
