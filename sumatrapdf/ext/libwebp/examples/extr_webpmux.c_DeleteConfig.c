
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmd_args_; int args_; } ;
typedef TYPE_1__ Config ;


 int ExUtilDeleteCommandLineArguments (int *) ;
 int free (int ) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void DeleteConfig(Config* const config) {
  if (config != ((void*)0)) {
    free(config->args_);
    ExUtilDeleteCommandLineArguments(&config->cmd_args_);
    memset(config, 0, sizeof(*config));
  }
}
