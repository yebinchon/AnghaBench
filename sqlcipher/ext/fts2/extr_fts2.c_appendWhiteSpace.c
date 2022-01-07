
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringBuffer ;


 int append (int *,char*) ;
 int endsInWhiteSpace (int *) ;
 scalar_t__ stringBufferLength (int *) ;

__attribute__((used)) static void appendWhiteSpace(StringBuffer *p){
  if( stringBufferLength(p)==0 ) return;
  if( !endsInWhiteSpace(p) ) append(p, " ");
}
