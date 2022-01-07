
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {scalar_t__ view; } ;


 scalar_t__ view_is_urgent (scalar_t__) ;

__attribute__((used)) static bool find_urgent_iterator(struct sway_container *con, void *data) {
 return con->view && view_is_urgent(con->view);
}
