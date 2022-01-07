
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (unsigned char) ;

__attribute__((used)) static int safe_isspace(char c){
  return (c&0x80)==0 ? isspace((unsigned char)c) : 0;
}
