
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
typedef TYPE_1__ DatasourceDefn ;
typedef int Datasource ;


 int TEST_DATASOURCE_RANDOM ;
 int * testDatasourceNew (TYPE_1__ const*) ;

__attribute__((used)) static Datasource *getDatasource(void){
  const DatasourceDefn defn = { TEST_DATASOURCE_RANDOM, 10, 15, 200, 250 };
  return testDatasourceNew(&defn);
}
