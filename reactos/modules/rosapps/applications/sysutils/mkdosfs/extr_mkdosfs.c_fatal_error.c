
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_name ;
 int exit (int) ;
 int fprintf (int ,char const*,int ,int ) ;
 int program_name ;
 int stderr ;

__attribute__((used)) static void
fatal_error (const char *fmt_string)
{
  fprintf (stderr, fmt_string, program_name, device_name);
  exit (1);
}
