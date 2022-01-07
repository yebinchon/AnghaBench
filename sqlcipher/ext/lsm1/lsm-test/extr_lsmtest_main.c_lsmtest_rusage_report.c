
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {scalar_t__ ru_inblock; scalar_t__ ru_oublock; scalar_t__ ru_maxrss; } ;
typedef int r ;


 int RUSAGE_SELF ;
 int getrusage (int ,struct rusage*) ;
 int memset (struct rusage*,int ,int) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static void lsmtest_rusage_report(void){
  struct rusage r;
  memset(&r, 0, sizeof(r));

  getrusage(RUSAGE_SELF, &r);
  printf("# getrusage: { ru_maxrss %d ru_oublock %d ru_inblock %d }\n",
      (int)r.ru_maxrss, (int)r.ru_oublock, (int)r.ru_inblock
  );
}
