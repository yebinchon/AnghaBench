
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 int testcase (int) ;

__attribute__((used)) static void fts3ColumnlistCopy(char **pp, char **ppPoslist){
  char *pEnd = *ppPoslist;
  char c = 0;




  while( 0xFE & (*pEnd | c) ){
    c = *pEnd++ & 0x80;
    testcase( c!=0 && ((*pEnd)&0xfe)==0 );
  }
  if( pp ){
    int n = (int)(pEnd - *ppPoslist);
    char *p = *pp;
    memcpy(p, *ppPoslist, n);
    p += n;
    *pp = p;
  }
  *ppPoslist = pEnd;
}
