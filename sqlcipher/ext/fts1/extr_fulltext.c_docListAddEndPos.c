
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DocList ;


 int appendVarint (int *,int ) ;

__attribute__((used)) static void docListAddEndPos(DocList *d){
  appendVarint(d, 0);
}
