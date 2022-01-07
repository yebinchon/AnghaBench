
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_NUMBER ;
 int* bson_numstr_len ;
 int * bson_numstrs ;
 int memcpy (char*,int ,int) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static inline int
bson_numstr( char *str, unsigned int i ) {
 if ( i < MAX_NUMBER) {
  memcpy( str, bson_numstrs[i], 4 );
  return bson_numstr_len[i];
 } else {
  return sprintf( str,"%u", i );
 }
}
