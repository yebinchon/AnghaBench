
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

int str_empty (char *str) {
  return ((str == ((void*)0)) || (strlen(str) < 1));
}
