
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int azTokenizer; int azContentColumn; int azColumn; } ;
typedef TYPE_1__ TableSpec ;


 int sqlite3_free (int ) ;

__attribute__((used)) static void clearTableSpec(TableSpec *p) {
  sqlite3_free(p->azColumn);
  sqlite3_free(p->azContentColumn);
  sqlite3_free(p->azTokenizer);
}
