
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argc_; char const** argv_; int argv_data_; scalar_t__ own_argv_; } ;
typedef TYPE_1__ CommandLineArguments ;


 int WebPDataInit (int *) ;
 int assert (int ) ;

__attribute__((used)) static void ResetCommandLineArguments(int argc, const char* argv[],
                                      CommandLineArguments* const args) {
  assert(args != ((void*)0));
  args->argc_ = argc;
  args->argv_ = argv;
  args->own_argv_ = 0;
  WebPDataInit(&args->argv_data_);
}
