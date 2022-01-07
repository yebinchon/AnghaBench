
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 int EXPECTED_EQUAL_TO ;
 int L_HORIZ ;
 struct cmd_results* checkarg (int,char*,int ,int ) ;
 struct cmd_results* do_split (int ) ;

struct cmd_results *cmd_splith(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "splitv", EXPECTED_EQUAL_TO, 0))) {
  return error;
 }
 return do_split(L_HORIZ);
}
