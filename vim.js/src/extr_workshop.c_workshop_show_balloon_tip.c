
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int * balloonEval ;
 int gui_mch_post_balloon (int *,int *) ;
 int wstrace (char*,char*) ;

void
workshop_show_balloon_tip(
 char *tip)
{





    if (balloonEval != ((void*)0))
 gui_mch_post_balloon(balloonEval, (char_u *)tip);
}
