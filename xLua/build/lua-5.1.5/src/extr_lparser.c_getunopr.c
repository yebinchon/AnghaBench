
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnOpr ;


 int OPR_LEN ;
 int OPR_MINUS ;
 int OPR_NOT ;
 int OPR_NOUNOPR ;


__attribute__((used)) static UnOpr getunopr (int op) {
  switch (op) {
    case 128: return OPR_NOT;
    case '-': return OPR_MINUS;
    case '#': return OPR_LEN;
    default: return OPR_NOUNOPR;
  }
}
