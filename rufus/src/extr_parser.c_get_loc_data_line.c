
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ command; } ;
typedef TYPE_1__ loc_cmd ;


 scalar_t__ LC_LOCALE ;
 int dispatch_loc_cmd (TYPE_1__*) ;
 int free_loc_cmd (TYPE_1__*) ;
 TYPE_1__* get_loc_cmd (char,char*) ;
 int luprintf (char*,char*) ;
 char* space ;
 size_t strspn (char*,char*) ;

__attribute__((used)) static void get_loc_data_line(char* line)
{
 size_t i;
 loc_cmd* lcmd = ((void*)0);
 char t;

 if ((line == ((void*)0)) || (line[0] == 0))
  return;


 i = strspn(line, space);


 t = line[i++];
 if (t == '#')
  return;
 if ((t == 0) || ((line[i] != space[0]) && (line[i] != space[1]))) {
  luprintf("syntax error: '%s'", line);
  return;
 }

 lcmd = get_loc_cmd(t, &line[i]);

 if ((lcmd != ((void*)0)) && (lcmd->command != LC_LOCALE))

  dispatch_loc_cmd(lcmd);
 else
  free_loc_cmd(lcmd);
}
