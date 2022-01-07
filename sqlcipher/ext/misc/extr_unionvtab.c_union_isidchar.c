
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int union_isidchar(char c){
  return ((c>='a' && c<='z') || (c>='A' && c<'Z') || (c>='0' && c<='9'));
}
