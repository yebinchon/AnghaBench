
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* auto_mode; } ;
struct TYPE_5__ {void* rdpclip; TYPE_1__ xclip; } ;
typedef TYPE_2__ RDPCLIENT ;


 void* False ;
 void* True ;
 scalar_t__ str_startswith (char const*,char*) ;
 int warning (char*,char const*) ;

void
ui_clip_set_mode(RDPCLIENT * This, const char *optarg)
{
 This->rdpclip = True;

 if (str_startswith(optarg, "PRIMARYCLIPBOARD"))
  This->xclip.auto_mode = True;
 else if (str_startswith(optarg, "CLIPBOARD"))
  This->xclip.auto_mode = False;
 else
 {
  warning("Invalid clipboard mode '%s'.\n", optarg);
  This->rdpclip = False;
 }
}
