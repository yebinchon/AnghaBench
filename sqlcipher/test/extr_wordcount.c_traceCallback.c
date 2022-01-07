
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static void traceCallback(void *NotUsed, const char *zSql){
  printf("%s;\n", zSql);
}
