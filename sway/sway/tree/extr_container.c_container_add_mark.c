
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int marks; } ;


 int ipc_event_window (struct sway_container*,char*) ;
 int list_add (int ,int ) ;
 int strdup (char*) ;

void container_add_mark(struct sway_container *con, char *mark) {
 list_add(con->marks, strdup(mark));
 ipc_event_window(con, "mark");
}
