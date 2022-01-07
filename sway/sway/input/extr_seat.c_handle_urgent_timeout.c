
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {int dummy; } ;


 int view_set_urgent (struct sway_view*,int) ;

__attribute__((used)) static int handle_urgent_timeout(void *data) {
 struct sway_view *view = data;
 view_set_urgent(view, 0);
 return 0;
}
