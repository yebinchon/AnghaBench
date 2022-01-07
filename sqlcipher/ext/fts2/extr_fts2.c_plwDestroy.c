
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLWriter ;


 int SCRAMBLE (int *) ;

__attribute__((used)) static void plwDestroy(PLWriter *pWriter){
  SCRAMBLE(pWriter);
}
