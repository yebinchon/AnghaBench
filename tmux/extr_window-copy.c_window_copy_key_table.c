
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {TYPE_1__* window; } ;
struct window_mode_entry {struct window_pane* wp; } ;
struct TYPE_2__ {int options; } ;


 scalar_t__ MODEKEY_VI ;
 scalar_t__ options_get_number (int ,char*) ;

__attribute__((used)) static const char *
window_copy_key_table(struct window_mode_entry *wme)
{
 struct window_pane *wp = wme->wp;

 if (options_get_number(wp->window->options, "mode-keys") == MODEKEY_VI)
  return ("copy-mode-vi");
 return ("copy-mode");
}
