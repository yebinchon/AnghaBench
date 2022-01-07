
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int options_t ;
typedef int location_provider_t ;
typedef int gamma_method_t ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int parse_command_line_option (char,int ,int *,char const*,int const*,int const*) ;

void
options_parse_args(
 options_t *options, int argc, char *argv[],
 const gamma_method_t *gamma_methods,
 const location_provider_t *location_providers)
{
 const char* program_name = argv[0];
 int opt;
 while ((opt = getopt(argc, argv, "b:c:g:hl:m:oO:pPrt:vVx")) != -1) {
  char option = opt;
  int r = parse_command_line_option(
   option, optarg, options, program_name, gamma_methods,
   location_providers);
  if (r < 0) exit(EXIT_FAILURE);
 }
}
