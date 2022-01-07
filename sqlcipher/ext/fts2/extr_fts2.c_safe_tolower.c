
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int safe_tolower(char c){
  return (c>='A' && c<='Z') ? (c - 'A' + 'a') : c;
}
