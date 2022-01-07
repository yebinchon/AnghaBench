
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaynag_button {scalar_t__ type; int action; scalar_t__ terminal; int text; } ;
struct TYPE_2__ {int visible; } ;
struct swaynag {int run_display; TYPE_1__ details; } ;
typedef scalar_t__ pid_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ SWAYNAG_ACTION_DISMISS ;
 scalar_t__ SWAYNAG_ACTION_EXPAND ;
 int SWAY_DEBUG ;
 int _exit (int ) ;
 int execl (char*,char*,char*,int ,int *) ;
 scalar_t__ fork () ;
 char* getenv (char*) ;
 int render_frame (struct swaynag*) ;
 scalar_t__ strlen (char*) ;
 int sway_log (int ,char*,...) ;
 int sway_log_errno (int ,char*) ;
 int swaynag_destroy (struct swaynag*) ;
 int terminal_execute (char*,int ) ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;

__attribute__((used)) static void swaynag_button_execute(struct swaynag *swaynag,
  struct swaynag_button *button) {
 sway_log(SWAY_DEBUG, "Executing [%s]: %s", button->text, button->action);
 if (button->type == SWAYNAG_ACTION_DISMISS) {
  swaynag->run_display = 0;
 } else if (button->type == SWAYNAG_ACTION_EXPAND) {
  swaynag->details.visible = !swaynag->details.visible;
  render_frame(swaynag);
 } else {
  pid_t pid = fork();
  if (pid < 0) {
   sway_log_errno(SWAY_DEBUG, "Failed to fork");
   return;
  } else if (pid == 0) {

   pid = fork();
   if (pid < 0) {
    sway_log_errno(SWAY_DEBUG, "Failed to fork");
    return;
   } else if (pid == 0) {

    char *terminal = getenv("TERMINAL");
    if (button->terminal && terminal && strlen(terminal)) {
     sway_log(SWAY_DEBUG, "Found $TERMINAL: %s", terminal);
     if (!terminal_execute(terminal, button->action)) {
      swaynag_destroy(swaynag);
      _exit(EXIT_FAILURE);
     }
    } else {
     if (button->terminal) {
      sway_log(SWAY_DEBUG,
        "$TERMINAL not found. Running directly");
     }
     execl("/bin/sh", "/bin/sh", "-c", button->action, ((void*)0));
     sway_log_errno(SWAY_DEBUG, "execl failed");
     _exit(EXIT_FAILURE);
    }
   }
   _exit(EXIT_SUCCESS);
  }
  if (waitpid(pid, ((void*)0), 0) < 0) {
   sway_log_errno(SWAY_DEBUG, "waitpid failed");
  }
 }
}
