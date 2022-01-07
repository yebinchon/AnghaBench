
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int GetStrnlen(const char *string, int maxlen) {
 int i;
 for (i = 0; i < maxlen && string[i]; i++);
 return i;
}
