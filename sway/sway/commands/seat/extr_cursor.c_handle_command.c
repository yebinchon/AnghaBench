
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_cursor {int cursor; } ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {float width; float height; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 int cursor_rebase (struct sway_cursor*) ;
 int * expected_syntax ;
 struct cmd_results* press_or_release (struct sway_cursor*,char*,char*) ;
 TYPE_1__* root ;
 scalar_t__ strcasecmp (char*,char*) ;
 float strtof (char*,int *) ;
 int strtol (char*,int *,int) ;
 int wlr_cursor_move (int ,int *,int,int) ;
 int wlr_cursor_warp_absolute (int ,int *,float,float) ;

__attribute__((used)) static struct cmd_results *handle_command(struct sway_cursor *cursor,
  int argc, char **argv) {
 if (strcasecmp(argv[0], "move") == 0) {
  if (argc < 3) {
   return cmd_results_new(CMD_INVALID, expected_syntax);
  }
  int delta_x = strtol(argv[1], ((void*)0), 10);
  int delta_y = strtol(argv[2], ((void*)0), 10);
  wlr_cursor_move(cursor->cursor, ((void*)0), delta_x, delta_y);
  cursor_rebase(cursor);
 } else if (strcasecmp(argv[0], "set") == 0) {
  if (argc < 3) {
   return cmd_results_new(CMD_INVALID, expected_syntax);
  }

  float x = strtof(argv[1], ((void*)0)) / root->width;
  float y = strtof(argv[2], ((void*)0)) / root->height;
  wlr_cursor_warp_absolute(cursor->cursor, ((void*)0), x, y);
  cursor_rebase(cursor);
 } else {
  if (argc < 2) {
   return cmd_results_new(CMD_INVALID, expected_syntax);
  }
  struct cmd_results *error = ((void*)0);
  if ((error = press_or_release(cursor, argv[0], argv[1]))) {
   return error;
  }
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
