#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct in_ev {int dummy; } ;
struct command {int dummy; } ;
struct arg {int /*<<< orphan*/  peer_id; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  COLOR_BLUE 131 
#define  COLOR_CYAN 130 
#define  COLOR_GREEN 129 
#define  COLOR_GREY 128 
 char* COLOR_INVERSE ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  disable_colors ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_ev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_ev*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 

void FUNC8 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC0 (arg_num == 1);
  static char *colors[4] = {COLOR_GREY, COLOR_CYAN, COLOR_BLUE, COLOR_GREEN};
  static unsigned char buf[16];
  FUNC1 (buf, 0, sizeof (buf));
  FUNC7 (TLS, args[0].peer_id, buf);
  FUNC4 (ev);
  int i;
  for (i = 0; i < 16; i++) {
    int x = buf[i];
    int j;
    for (j = 0; j < 4; j ++) {    
      if (!ev) {
        FUNC6 (ev, colors[x & 3]);
        FUNC6 (ev, COLOR_INVERSE);
      }
      if (!disable_colors && !ev) {
        FUNC5 (ev, "  ");
      } else {
        switch (x & 3) {
        case 0:
          FUNC5 (ev, "  ");
          break;
        case 1:
          FUNC5 (ev, "--");
          break;
        case 2:
          FUNC5 (ev, "==");
          break;
        case 3:
          FUNC5 (ev, "||");
          break;
        }
      }
      if (!ev) {
        FUNC2 (ev);
        FUNC2 (ev);
      }
      x = x >> 2;
    }
    if (i & 1) { 
      FUNC5 (ev, "\n"); 
    }
  }
  FUNC3 (ev);
}