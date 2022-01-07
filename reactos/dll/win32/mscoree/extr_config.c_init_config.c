
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int supported_runtimes; } ;
typedef TYPE_1__ parsed_config_file ;


 int list_init (int *) ;

__attribute__((used)) static void init_config(parsed_config_file *config)
{
    list_init(&config->supported_runtimes);
}
