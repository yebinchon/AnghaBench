
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

int lenient_strcmp(char *a, char *b) {
 if (a == b) {
  return 0;
 } else if (!a) {
  return -1;
 } else if (!b) {
  return 1;
 } else {
  return strcmp(a, b);
 }
}
