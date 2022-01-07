
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* nvlist_prtctl_t ;
typedef enum nvlist_prtctl_fmt { ____Placeholder_nvlist_prtctl_fmt } nvlist_prtctl_fmt ;
struct TYPE_3__ {char const* nvprt_nmfmt; char const* nvprt_eomfmt; char* nvprt_btwnarrfmt; int nvprt_btwnarrfmt_nl; } ;





 int * strstr (char const*,char*) ;

void
nvlist_prtctl_setfmt(nvlist_prtctl_t pctl, enum nvlist_prtctl_fmt which,
    const char *fmt)
{
 switch (which) {
 case 129:
  if (fmt == ((void*)0))
   fmt = "%s = ";
  pctl->nvprt_nmfmt = fmt;
  break;

 case 128:
  if (fmt == ((void*)0))
   fmt = "\n";
  pctl->nvprt_eomfmt = fmt;
  break;

 case 130:
  if (fmt == ((void*)0)) {
   pctl->nvprt_btwnarrfmt = " ";
   pctl->nvprt_btwnarrfmt_nl = 0;
  } else {
   pctl->nvprt_btwnarrfmt = fmt;
   pctl->nvprt_btwnarrfmt_nl = (strstr(fmt, "\n") != ((void*)0));
  }
  break;

 default:
  break;
 }
}
