
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;



__attribute__((used)) static ULONG fd_upgrade_cp(ULONG cp)
{
 switch(cp) {
 case 850:
  return 858;
 default:
  return cp;
 }
}
