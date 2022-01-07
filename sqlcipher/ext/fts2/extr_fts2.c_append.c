
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringBuffer ;


 int nappend (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void append(StringBuffer *sb, const char *zFrom){
  nappend(sb, zFrom, strlen(zFrom));
}
