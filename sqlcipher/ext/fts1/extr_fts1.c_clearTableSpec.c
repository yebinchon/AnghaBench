
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int azTokenizer; int azContentColumn; int azColumn; } ;
typedef TYPE_1__ TableSpec ;


 int free (int ) ;

__attribute__((used)) static void clearTableSpec(TableSpec *p) {
  free(p->azColumn);
  free(p->azContentColumn);
  free(p->azTokenizer);
}
