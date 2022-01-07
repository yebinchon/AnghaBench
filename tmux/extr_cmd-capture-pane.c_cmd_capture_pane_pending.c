
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct window_pane {int dummy; } ;
struct evbuffer {int dummy; } ;
struct args {int dummy; } ;


 char* EVBUFFER_DATA (struct evbuffer*) ;
 size_t EVBUFFER_LENGTH (struct evbuffer*) ;
 scalar_t__ args_has (struct args*,char) ;
 char* cmd_capture_pane_append (char*,size_t*,char*,size_t) ;
 struct evbuffer* input_pending (struct window_pane*) ;
 size_t strlen (char*) ;
 int xsnprintf (char*,int,char*,char) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
cmd_capture_pane_pending(struct args *args, struct window_pane *wp,
    size_t *len)
{
 struct evbuffer *pending;
 char *buf, *line, tmp[5];
 size_t linelen;
 u_int i;

 pending = input_pending(wp);
 if (pending == ((void*)0))
  return (xstrdup(""));

 line = EVBUFFER_DATA(pending);
 linelen = EVBUFFER_LENGTH(pending);

 buf = xstrdup("");
 if (args_has(args, 'C')) {
  for (i = 0; i < linelen; i++) {
   if (line[i] >= ' ' && line[i] != '\\') {
    tmp[0] = line[i];
    tmp[1] = '\0';
   } else
    xsnprintf(tmp, sizeof tmp, "\\%03hho", line[i]);
   buf = cmd_capture_pane_append(buf, len, tmp,
       strlen(tmp));
  }
 } else
  buf = cmd_capture_pane_append(buf, len, line, linelen);
 return (buf);
}
