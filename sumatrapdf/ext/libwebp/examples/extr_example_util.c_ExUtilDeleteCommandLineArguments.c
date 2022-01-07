
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int argv_data_; scalar_t__ argv_; scalar_t__ own_argv_; } ;
typedef TYPE_1__ CommandLineArguments ;


 int ResetCommandLineArguments (int ,int *,TYPE_1__* const) ;
 int WebPDataClear (int *) ;
 int WebPFree (void*) ;

void ExUtilDeleteCommandLineArguments(CommandLineArguments* const args) {
  if (args != ((void*)0)) {
    if (args->own_argv_) {
      WebPFree((void*)args->argv_);
      WebPDataClear(&args->argv_data_);
    }
    ResetCommandLineArguments(0, ((void*)0), args);
  }
}
