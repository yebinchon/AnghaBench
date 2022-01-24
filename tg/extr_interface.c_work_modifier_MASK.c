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

/* Variables and functions */
 int /*<<< orphan*/  TGLMF_HTML ; 
 int /*<<< orphan*/  TGL_SEND_MSG_FLAG_DISABLE_PREVIEW ; 
 int /*<<< orphan*/  TGL_SEND_MSG_FLAG_ENABLE_PREVIEW ; 
 int /*<<< orphan*/  count ; 
 int /*<<< orphan*/  disable_msg_preview ; 
 int /*<<< orphan*/  do_html ; 
 scalar_t__ FUNC0 (char const*,int,char*) ; 
 int offline_mode ; 
 int /*<<< orphan*/  reply_id ; 
 int FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 

void FUNC2 (const char *s, int l) {
  if (FUNC0 (s, l, "[offline]")) {
    offline_mode = 1;
  }
  if (FUNC1 (s, "[reply=%d]", &reply_id) >= 1) {
  }
  
  if (FUNC0 (s, l, "[html]")) {
    do_html = TGLMF_HTML;
  }
  if (FUNC0 (s, l, "[disable_preview]")) {
    disable_msg_preview = TGL_SEND_MSG_FLAG_DISABLE_PREVIEW;
  }
  if (FUNC0 (s, l, "[enable_preview]")) {
    disable_msg_preview = TGL_SEND_MSG_FLAG_ENABLE_PREVIEW;
  }
#ifdef ALLOW_MULT
  if (sscanf (s, "[x%d]", &count) >= 1) {
  }
#endif
}