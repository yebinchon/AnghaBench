
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int sqlite3_int64 ;


 void* sqlite3_malloc64 (int ) ;

__attribute__((used)) static void *fts5ParseAlloc(u64 t){ return sqlite3_malloc64((sqlite3_int64)t);}
