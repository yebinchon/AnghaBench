
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ action_type_; scalar_t__ type_; int * output_; int * input_; } ;
typedef TYPE_1__ Config ;


 scalar_t__ ACTION_INFO ;
 scalar_t__ ACTION_IS_NIL ;
 scalar_t__ ACTION_SET ;
 int ERROR_GOTO1 (char*,int ) ;
 int ErrValidate2 ;
 scalar_t__ FEATURETYPE_IS_NIL ;
 scalar_t__ FEATURE_ANMF ;

__attribute__((used)) static int ValidateConfig(Config* const config) {
  int ok = 1;


  if (ACTION_IS_NIL) {
    ERROR_GOTO1("ERROR: No action specified.\n", ErrValidate2);
  }


  if (FEATURETYPE_IS_NIL && config->action_type_ != ACTION_INFO) {
    ERROR_GOTO1("ERROR: No feature specified.\n", ErrValidate2);
  }


  if (config->input_ == ((void*)0)) {
    if (config->action_type_ != ACTION_SET) {
      ERROR_GOTO1("ERROR: No input file specified.\n", ErrValidate2);
    } else if (config->type_ != FEATURE_ANMF) {
      ERROR_GOTO1("ERROR: No input file specified.\n", ErrValidate2);
    }
  }


  if (config->output_ == ((void*)0) && config->action_type_ != ACTION_INFO) {
    ERROR_GOTO1("ERROR: No output file specified.\n", ErrValidate2);
  }

 ErrValidate2:
  return ok;
}
