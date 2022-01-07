
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (void const*,void const*) ;

__attribute__((used)) static int find_output(const void *id1, const void *id2) {
 return strcmp(id1, id2);
}
