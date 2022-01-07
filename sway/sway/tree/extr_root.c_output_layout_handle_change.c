
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;


 int arrange_root () ;
 int transaction_commit_dirty () ;

__attribute__((used)) static void output_layout_handle_change(struct wl_listener *listener,
  void *data) {
 arrange_root();
 transaction_commit_dirty();
}
