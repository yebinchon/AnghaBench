
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prohibit_ipc ;

void log_set_prohibit_ipc(bool b) {
        prohibit_ipc = b;
}
