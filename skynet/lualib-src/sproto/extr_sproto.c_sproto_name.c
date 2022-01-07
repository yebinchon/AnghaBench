
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {char const* name; } ;



const char *
sproto_name(struct sproto_type * st) {
 return st->name;
}
