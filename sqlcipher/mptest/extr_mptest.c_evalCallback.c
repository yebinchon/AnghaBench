
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int String ;


 int UNUSED_PARAMETER (char**) ;
 int stringAppendTerm (int *,char*) ;

__attribute__((used)) static int evalCallback(void *pCData, int argc, char **argv, char **azCol){
  String *p = (String*)pCData;
  int i;
  UNUSED_PARAMETER(azCol);
  for(i=0; i<argc; i++) stringAppendTerm(p, argv[i]);
  return 0;
}
