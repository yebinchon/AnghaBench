
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLD_DUMPED ;
 int CLD_KILLED ;

__attribute__((used)) static int cld_dumped_to_killed(int code) {


        return code == CLD_DUMPED ? CLD_KILLED : code;
}
