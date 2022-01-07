
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandLineArguments ;


 int CountOccurrences (int const* const,char*) ;
 int ERROR_GOTO1 (char*,int ) ;
 int ErrValidate ;
 int assert (int) ;

__attribute__((used)) static int ValidateCommandLine(const CommandLineArguments* const cmd_args,
                               int* num_feature_args) {
  int num_frame_args;
  int num_loop_args;
  int num_bgcolor_args;
  int num_durations_args;
  int ok = 1;

  assert(num_feature_args != ((void*)0));
  *num_feature_args = 0;


  if (CountOccurrences(cmd_args, "-get") > 1) {
    ERROR_GOTO1("ERROR: Multiple '-get' arguments specified.\n", ErrValidate);
  }
  if (CountOccurrences(cmd_args, "-set") > 1) {
    ERROR_GOTO1("ERROR: Multiple '-set' arguments specified.\n", ErrValidate);
  }
  if (CountOccurrences(cmd_args, "-strip") > 1) {
    ERROR_GOTO1("ERROR: Multiple '-strip' arguments specified.\n", ErrValidate);
  }
  if (CountOccurrences(cmd_args, "-info") > 1) {
    ERROR_GOTO1("ERROR: Multiple '-info' arguments specified.\n", ErrValidate);
  }
  if (CountOccurrences(cmd_args, "-o") > 1) {
    ERROR_GOTO1("ERROR: Multiple output files specified.\n", ErrValidate);
  }


  num_frame_args = CountOccurrences(cmd_args, "-frame");
  num_loop_args = CountOccurrences(cmd_args, "-loop");
  num_bgcolor_args = CountOccurrences(cmd_args, "-bgcolor");
  num_durations_args = CountOccurrences(cmd_args, "-duration");

  if (num_loop_args > 1) {
    ERROR_GOTO1("ERROR: Multiple loop counts specified.\n", ErrValidate);
  }
  if (num_bgcolor_args > 1) {
    ERROR_GOTO1("ERROR: Multiple background colors specified.\n", ErrValidate);
  }

  if ((num_frame_args == 0) && (num_loop_args + num_bgcolor_args > 0)) {
    ERROR_GOTO1("ERROR: Loop count and background color are relevant only in "
                "case of animation.\n", ErrValidate);
  }
  if (num_durations_args > 0 && num_frame_args != 0) {
    ERROR_GOTO1("ERROR: Can not combine -duration and -frame commands.\n",
                ErrValidate);
  }

  assert(ok == 1);
  if (num_durations_args > 0) {
    *num_feature_args = num_durations_args;
  } else if (num_frame_args == 0) {

    *num_feature_args = 1;
  } else {

    *num_feature_args = num_frame_args + num_loop_args + num_bgcolor_args;
  }

 ErrValidate:
  return ok;
}
