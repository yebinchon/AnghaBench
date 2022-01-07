
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgHdr ;


 int ROUND8 (int) ;

int sqlite3HeaderSizePcache(void){ return ROUND8(sizeof(PgHdr)); }
