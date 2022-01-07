
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgHdr1 ;


 int ROUND8 (int) ;

int sqlite3HeaderSizePcache1(void){ return ROUND8(sizeof(PgHdr1)); }
