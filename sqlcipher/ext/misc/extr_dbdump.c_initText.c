
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DText ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void initText(DText *p){
  memset(p, 0, sizeof(*p));
}
