
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TGLMF_HTML ;
 int TGL_SEND_MSG_FLAG_DISABLE_PREVIEW ;
 int TGL_SEND_MSG_FLAG_ENABLE_PREVIEW ;
 int count ;
 int disable_msg_preview ;
 int do_html ;
 scalar_t__ is_same_word (char const*,int,char*) ;
 int offline_mode ;
 int reply_id ;
 int sscanf (char const*,char*,int *) ;

void work_modifier (const char *s, int l) {
  if (is_same_word (s, l, "[offline]")) {
    offline_mode = 1;
  }
  if (sscanf (s, "[reply=%d]", &reply_id) >= 1) {
  }

  if (is_same_word (s, l, "[html]")) {
    do_html = TGLMF_HTML;
  }
  if (is_same_word (s, l, "[disable_preview]")) {
    disable_msg_preview = TGL_SEND_MSG_FLAG_DISABLE_PREVIEW;
  }
  if (is_same_word (s, l, "[enable_preview]")) {
    disable_msg_preview = TGL_SEND_MSG_FLAG_ENABLE_PREVIEW;
  }




}
