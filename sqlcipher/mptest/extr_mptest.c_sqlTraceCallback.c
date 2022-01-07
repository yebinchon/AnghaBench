
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (void*) ;
 int clipLength (char const*) ;
 int logMessage (char*,int ,char const*) ;

__attribute__((used)) static void sqlTraceCallback(void *NotUsed1, const char *zSql){
  UNUSED_PARAMETER(NotUsed1);
  logMessage("[%.*s]", clipLength(zSql), zSql);
}
