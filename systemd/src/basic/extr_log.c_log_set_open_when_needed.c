
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int open_when_needed ;

void log_set_open_when_needed(bool b) {
        open_when_needed = b;
}
