
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int W_CHAR ;
struct TYPE_6__ {int arg_count_; int * args_; int cmd_args_; } ;
typedef int FeatureArg ;
typedef TYPE_1__ Config ;


 int ERROR_GOTO1 (char*,int ) ;
 int Err1 ;
 int ExUtilInitCommandLineArguments (int,char const**,int *) ;
 int ParseCommandLine (TYPE_1__* const,int const** const) ;
 int ValidateCommandLine (int *,int*) ;
 int ValidateConfig (TYPE_1__* const) ;
 scalar_t__ calloc (int,int) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static int InitializeConfig(int argc, const char* argv[], Config* const config,
                            const W_CHAR** const unicode_argv) {
  int num_feature_args = 0;
  int ok;

  memset(config, 0, sizeof(*config));

  ok = ExUtilInitCommandLineArguments(argc, argv, &config->cmd_args_);
  if (!ok) return 0;


  if (!ValidateCommandLine(&config->cmd_args_, &num_feature_args)) {
    ERROR_GOTO1("Exiting due to command-line parsing error.\n", Err1);
  }

  config->arg_count_ = num_feature_args;
  config->args_ = (FeatureArg*)calloc(num_feature_args, sizeof(*config->args_));
  if (config->args_ == ((void*)0)) {
    ERROR_GOTO1("ERROR: Memory allocation error.\n", Err1);
  }


  if (!ParseCommandLine(config, unicode_argv) || !ValidateConfig(config)) {
    ERROR_GOTO1("Exiting due to command-line parsing error.\n", Err1);
  }

 Err1:
  return ok;
}
