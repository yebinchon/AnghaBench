
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int* c_cc; } ;
struct tty {int flags; int in; struct client* client; int key_timer; TYPE_1__ tio; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct mouse_event {int member_0; } ;
struct key_event {int key; int m; } ;
struct client {int name; int flags; } ;
typedef int key_code ;
typedef int cc_t ;


 int CLIENT_FOCUSED ;
 char* EVBUFFER_DATA (int ) ;
 size_t EVBUFFER_LENGTH (int ) ;
 int KEYC_BSPACE ;
 int KEYC_ESCAPE ;
 int KEYC_FOCUS_IN ;
 int KEYC_FOCUS_OUT ;
 int KEYC_MASK_KEY ;
 int KEYC_MASK_MOD ;
 int KEYC_MOUSE ;
 int KEYC_UNKNOWN ;
 int KEYC_XTERM ;
 int TTY_TIMER ;
 size_t VERASE ;
 int _POSIX_VDISABLE ;
 int evbuffer_drain (int ,size_t) ;
 scalar_t__ event_initialized (int *) ;
 int evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 scalar_t__ evtimer_initialized (int *) ;
 int evtimer_pending (int *,int *) ;
 int evtimer_set (int *,int ,struct tty*) ;
 int free (struct key_event*) ;
 int gettimeofday (struct timeval*,int *) ;
 int global_options ;
 int log_debug (char*,int ,int,...) ;
 int memcpy (int *,struct mouse_event*,int) ;
 int options_get_number (int ,char*) ;
 int server_client_handle_key (struct client*,struct key_event*) ;
 int tty_keys_callback ;
 int tty_keys_clipboard (struct tty*,char const*,size_t,size_t*) ;
 int tty_keys_device_attributes (struct tty*,char const*,size_t,size_t*) ;
 int tty_keys_mouse (struct tty*,char const*,size_t,size_t*,struct mouse_event*) ;
 int tty_keys_next1 (struct tty*,char const*,size_t,int*,size_t*,int) ;
 struct key_event* xmalloc (int) ;

int
tty_keys_next(struct tty *tty)
{
 struct client *c = tty->client;
 struct timeval tv;
 const char *buf;
 size_t len, size;
 cc_t bspace;
 int delay, expired = 0, n;
 key_code key;
 struct mouse_event m = { 0 };
 struct key_event *event;

 gettimeofday(&tv, ((void*)0));


 buf = EVBUFFER_DATA(tty->in);
 len = EVBUFFER_LENGTH(tty->in);
 if (len == 0)
  return (0);
 log_debug("%s: keys are %zu (%.*s)", c->name, len, (int)len, buf);


 switch (tty_keys_clipboard(tty, buf, len, &size)) {
 case 0:
  key = KEYC_UNKNOWN;
  goto complete_key;
 case -1:
  break;
 case 1:
  goto partial_key;
 }


 switch (tty_keys_device_attributes(tty, buf, len, &size)) {
 case 0:
  key = KEYC_UNKNOWN;
  goto complete_key;
 case -1:
  break;
 case 1:
  goto partial_key;
 }


 switch (tty_keys_mouse(tty, buf, len, &size, &m)) {
 case 0:
  key = KEYC_MOUSE;
  goto complete_key;
 case -1:
  break;
 case -2:
  key = KEYC_MOUSE;
  goto discard_key;
 case 1:
  goto partial_key;
 }

first_key:

 n = tty_keys_next1(tty, buf, len, &key, &size, expired);
 if (n == 0)
  goto complete_key;
 if (n == 1)
  goto partial_key;





 if (*buf == '\033' && len > 1) {

  n = tty_keys_next1(tty, buf + 1, len - 1, &key, &size, expired);
  if (n == 0) {
   if (key & KEYC_XTERM) {







    key = '\033';
    size = 1;
    goto complete_key;
   }
   key |= KEYC_ESCAPE;
   size++;
   goto complete_key;
  }
  if (n == 1)
   goto partial_key;
 }





 if (*buf == '\033' && len >= 2) {
  key = (u_char)buf[1] | KEYC_ESCAPE;
  size = 2;
 } else {
  key = (u_char)buf[0];
  size = 1;
 }
 goto complete_key;

partial_key:
 log_debug("%s: partial key %.*s", c->name, (int)len, buf);


 if (tty->flags & TTY_TIMER) {
  if (evtimer_initialized(&tty->key_timer) &&
      !evtimer_pending(&tty->key_timer, ((void*)0))) {
   expired = 1;
   goto first_key;
  }
  return (0);
 }


 delay = options_get_number(global_options, "escape-time");
 tv.tv_sec = delay / 1000;
 tv.tv_usec = (delay % 1000) * 1000L;


 if (event_initialized(&tty->key_timer))
  evtimer_del(&tty->key_timer);
 evtimer_set(&tty->key_timer, tty_keys_callback, tty);
 evtimer_add(&tty->key_timer, &tv);

 tty->flags |= TTY_TIMER;
 return (0);

complete_key:
 log_debug("%s: complete key %.*s %#llx", c->name, (int)size, buf, key);






 bspace = tty->tio.c_cc[VERASE];
 if (bspace != _POSIX_VDISABLE && (key & KEYC_MASK_KEY) == bspace)
  key = (key & KEYC_MASK_MOD) | KEYC_BSPACE;


 evbuffer_drain(tty->in, size);


 if (event_initialized(&tty->key_timer))
  evtimer_del(&tty->key_timer);
 tty->flags &= ~TTY_TIMER;


 if (key == KEYC_FOCUS_OUT) {
  tty->client->flags &= ~CLIENT_FOCUSED;
  return (1);
 } else if (key == KEYC_FOCUS_IN) {
  tty->client->flags |= CLIENT_FOCUSED;
  return (1);
 }


 if (key != KEYC_UNKNOWN) {
  event = xmalloc(sizeof *event);
  event->key = key;
  memcpy(&event->m, &m, sizeof event->m);
  if (!server_client_handle_key(c, event))
   free(event);
 }

 return (1);

discard_key:
 log_debug("%s: discard key %.*s %#llx", c->name, (int)size, buf, key);


 evbuffer_drain(tty->in, size);

 return (1);
}
