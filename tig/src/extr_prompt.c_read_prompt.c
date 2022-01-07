
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* read_prompt_incremental (char const*,int,int,int *,int *) ;

char *
read_prompt(const char *prompt)
{
 return read_prompt_incremental(prompt, 1, 1, ((void*)0), ((void*)0));
}
