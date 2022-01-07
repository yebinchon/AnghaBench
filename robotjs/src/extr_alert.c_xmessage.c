
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_FAILED ;
 int MSG_PROGS_LEN ;
 int TASK_SUCCESS ;
 int assert (int) ;
 int runTask (char*,char**,int*) ;

__attribute__((used)) static int xmessage(char *argv[], int *exit_status)
{
 static const char * const MSG_PROGS[] = {"gmessage", "gxmessage",
                                          "kmessage", "xmessage"};
 static int PREV_MSG_INDEX = -1;


 char *prog = ((void*)0);
 int ret;


 if (PREV_MSG_INDEX >= 0) {
  assert(PREV_MSG_INDEX < (sizeof(MSG_PROGS) / sizeof(MSG_PROGS[0])));

  prog = argv[0] = (char *)MSG_PROGS[PREV_MSG_INDEX];
  ret = runTask(prog, argv, exit_status);
 } else {


  size_t i;
  for (i = 0; i < (sizeof(MSG_PROGS) / sizeof(MSG_PROGS[0])); ++i) {
   prog = argv[0] = (char *)MSG_PROGS[i];
   ret = runTask(prog, argv, exit_status);
   if (ret != EXEC_FAILED) break;
  }

  if (ret == TASK_SUCCESS) PREV_MSG_INDEX = i;
 }

 return ret;
}
