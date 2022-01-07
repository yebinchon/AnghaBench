
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int exit (int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
_zed_conf_display_license(void)
{
 const char **pp;
 const char *text[] = {
     "The ZFS Event Daemon (ZED) is distributed under the terms of the",
     "  Common Development and Distribution License (CDDL-1.0)",
     "  <http://opensource.org/licenses/CDDL-1.0>.",
     "",
     "Developed at Lawrence Livermore National Laboratory"
     " (LLNL-CODE-403049).",
     "",
     ((void*)0)
 };

 for (pp = text; *pp; pp++)
  printf("%s\n", *pp);

 exit(EXIT_SUCCESS);
}
