#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tgl_dc {int flags; int auth_key_id; int* auth_key; TYPE_1__** options; } ;
struct TYPE_2__ {int port; int* ip; } ;

/* Variables and functions */
 int TGLDCF_LOGGED_IN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int,int*,int) ; 

void FUNC3 (struct tgl_dc *DC, void *extra) {
  int auth_file_fd = *(int *)extra;
  if (!DC) { 
    int x = 0;
    FUNC0 (FUNC2 (auth_file_fd, &x, 4) == 4);
    return;
  } else {
    int x = 1;
    FUNC0 (FUNC2 (auth_file_fd, &x, 4) == 4);
  }

  FUNC0 (DC->flags & TGLDCF_LOGGED_IN);

  FUNC0 (FUNC2 (auth_file_fd, &DC->options[0]->port, 4) == 4);
  int l = FUNC1 (DC->options[0]->ip);
  FUNC0 (FUNC2 (auth_file_fd, &l, 4) == 4);
  FUNC0 (FUNC2 (auth_file_fd, DC->options[0]->ip, l) == l);
  FUNC0 (FUNC2 (auth_file_fd, &DC->auth_key_id, 8) == 8);
  FUNC0 (FUNC2 (auth_file_fd, DC->auth_key, 256) == 256);
}