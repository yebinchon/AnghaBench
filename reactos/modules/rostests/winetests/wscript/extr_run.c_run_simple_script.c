
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int run_script (char*,char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void run_simple_script(const char *script, DWORD expected_exit_code)
{
    run_script("simple.js", script, strlen(script), expected_exit_code);
}
