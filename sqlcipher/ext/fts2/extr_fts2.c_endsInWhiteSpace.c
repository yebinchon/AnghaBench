
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringBuffer ;


 scalar_t__ safe_isspace (int ) ;
 int * stringBufferData (int *) ;
 int stringBufferLength (int *) ;

__attribute__((used)) static int endsInWhiteSpace(StringBuffer *p){
  return stringBufferLength(p)>0 &&
    safe_isspace(stringBufferData(p)[stringBufferLength(p)-1]);
}
