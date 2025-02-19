
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crtc_num_count; int* crtc_num; int screen_num; } ;
typedef TYPE_1__ randr_state_t ;


 char* _ (char*) ;
 int atoi (char const*) ;
 int* calloc (int,int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static int
randr_set_option(randr_state_t *state, const char *key, const char *value)
{
 if (strcasecmp(key, "screen") == 0) {
  state->screen_num = atoi(value);
 } else if (strcasecmp(key, "crtc") == 0) {
  char *tail;


  const char *local_value = value;
  while (1) {
   errno = 0;
   int parsed = strtol(local_value, &tail, 0);
   if (parsed == 0 && (errno != 0 ||
         tail == local_value)) {
    fprintf(stderr, _("Unable to read screen"
        " number: `%s'.\n"), value);
    return -1;
   } else {
    state->crtc_num_count += 1;
   }
   local_value = tail;

   if (*local_value == ',') {
    local_value += 1;
   } else if (*local_value == '\0') {
    break;
   }
  }


  state->crtc_num = calloc(state->crtc_num_count, sizeof(int));
  local_value = value;
  for (int i = 0; i < state->crtc_num_count; i++) {
   errno = 0;
   int parsed = strtol(local_value, &tail, 0);
   if (parsed == 0 && (errno != 0 ||
         tail == local_value)) {
    return -1;
   } else {
    state->crtc_num[i] = parsed;
   }
   local_value = tail;

   if (*local_value == ',') {
    local_value += 1;
   } else if (*local_value == '\0') {
    break;
   }
  }
 } else if (strcasecmp(key, "preserve") == 0) {
  fprintf(stderr, _("Parameter `%s` is now always on; "
      " Use the `%s` command-line option"
      " to disable.\n"),
   key, "-P");
 } else {
  fprintf(stderr, _("Unknown method parameter: `%s'.\n"), key);
  return -1;
 }

 return 0;
}
