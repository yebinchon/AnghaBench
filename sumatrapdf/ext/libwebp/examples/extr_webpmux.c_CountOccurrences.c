
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argc_; int * argv_; } ;
typedef TYPE_1__ CommandLineArguments ;


 int strcmp (int ,char const* const) ;

__attribute__((used)) static int CountOccurrences(const CommandLineArguments* const args,
                            const char* const arg) {
  int i;
  int num_occurences = 0;

  for (i = 0; i < args->argc_; ++i) {
    if (!strcmp(args->argv_[i], arg)) {
      ++num_occurences;
    }
  }
  return num_occurences;
}
