
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int queueoutchar (int ) ;

__attribute__((used)) static void queueoutstr(const char *str, int len) {
  while (len-- > 0) queueoutchar(*str++);
}
