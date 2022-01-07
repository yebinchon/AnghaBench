
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bytes; } ;
struct TYPE_5__ {int own_argv_; char const** argv_; int argc_; TYPE_3__ argv_data_; } ;
typedef TYPE_1__ CommandLineArguments ;


 int ExUtilReadFileToWebPData (char const*,TYPE_3__*) ;
 int MAX_ARGC ;
 int ResetCommandLineArguments (int,char const**,TYPE_1__* const) ;
 scalar_t__ WebPMalloc (int) ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strlen (char*) ;
 char* strtok (char*,char const*) ;

int ExUtilInitCommandLineArguments(int argc, const char* argv[],
                                   CommandLineArguments* const args) {
  if (args == ((void*)0) || argv == ((void*)0)) return 0;
  ResetCommandLineArguments(argc, argv, args);
  if (argc == 1 && argv[0][0] != '-') {
    char* cur;
    const char sep[] = " \t\r\n\f\v";
    if (!ExUtilReadFileToWebPData(argv[0], &args->argv_data_)) {
      return 0;
    }
    args->own_argv_ = 1;
    args->argv_ = (const char**)WebPMalloc(MAX_ARGC * sizeof(*args->argv_));
    if (args->argv_ == ((void*)0)) return 0;

    argc = 0;
    for (cur = strtok((char*)args->argv_data_.bytes, sep);
         cur != ((void*)0);
         cur = strtok(((void*)0), sep)) {
      if (argc == MAX_ARGC) {
        fprintf(stderr, "ERROR: Arguments limit %d reached\n", MAX_ARGC);
        return 0;
      }
      assert(strlen(cur) != 0);
      args->argv_[argc++] = cur;
    }
    args->argc_ = argc;
  }
  return 1;
}
