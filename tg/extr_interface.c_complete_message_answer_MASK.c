#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct tgl_message* last; } ;
typedef  TYPE_1__ tgl_peer_t ;
struct tgl_message {int flags; struct tgl_message* next; } ;

/* Variables and functions */
 int TGLMF_OUT ; 
 int FUNC0 (struct tgl_message*,int,char const*,int,char**) ; 

int FUNC1 (tgl_peer_t *P, int index, const char *text, int len, char **R) {
  struct tgl_message *M = P->last;
  while (M && (M->flags & TGLMF_OUT)) {
    M = M->next;
  }


  return FUNC0 (M, index, text, len, R);
}