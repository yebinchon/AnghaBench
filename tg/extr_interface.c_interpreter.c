
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interpreter_ex (char*,int ) ;

void interpreter (char *line) {
  interpreter_ex (line, 0);
}
