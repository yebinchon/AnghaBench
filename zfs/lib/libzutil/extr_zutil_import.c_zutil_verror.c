
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {char* lpc_desc; scalar_t__ lpc_printerr; scalar_t__ lpc_desc_active; } ;
typedef TYPE_1__ libpc_handle_t ;
typedef int action ;


 scalar_t__ B_FALSE ;
 int fprintf (int ,char*,char*,char const*) ;
 int stderr ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void
zutil_verror(libpc_handle_t *hdl, const char *error, const char *fmt,
    va_list ap)
{
 char action[1024];

 (void) vsnprintf(action, sizeof (action), fmt, ap);

 if (hdl->lpc_desc_active)
  hdl->lpc_desc_active = B_FALSE;
 else
  hdl->lpc_desc[0] = '\0';

 if (hdl->lpc_printerr) {
  if (hdl->lpc_desc[0] != '\0')
   error = hdl->lpc_desc;

  (void) fprintf(stderr, "%s: %s\n", action, error);
 }
}
