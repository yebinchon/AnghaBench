
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amatchStrcpy (char*,char const*) ;

__attribute__((used)) static void amatchStrcat(char *dest, const char *src){
  while( *dest ) dest++;
  amatchStrcpy(dest, src);
}
