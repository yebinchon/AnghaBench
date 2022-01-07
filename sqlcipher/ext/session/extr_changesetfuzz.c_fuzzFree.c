
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3_free (void*) ;

__attribute__((used)) static void fuzzFree(void *p){
  sqlite3_free(p);
}
