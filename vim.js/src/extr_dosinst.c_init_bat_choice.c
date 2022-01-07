
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int arg; int active; int (* changefunc ) (size_t) ;int * text; int installfunc; } ;
struct TYPE_3__ {char* batpath; char* oldbat; int batname; } ;


 char NUL ;
 int add_pathsep (char*) ;
 int change_bat_choice (size_t) ;
 size_t choice_count ;
 TYPE_2__* choices ;
 char* default_bat_dir ;
 char* getenv (char*) ;
 int install_bat_choice ;
 int set_bat_text (size_t,char*,int ) ;
 int strcpy (char*,char*) ;
 TYPE_1__* targets ;
 int toggle_bat_choice (size_t) ;

__attribute__((used)) static void
init_bat_choice(int target)
{
    char *batpath = targets[target].batpath;
    char *oldbat = targets[target].oldbat;
    char *p;
    int i;

    choices[choice_count].arg = target;
    choices[choice_count].installfunc = install_bat_choice;
    choices[choice_count].active = 1;
    choices[choice_count].text = ((void*)0);
    if (oldbat != ((void*)0))
    {

 choices[choice_count].changefunc = toggle_bat_choice;
 *batpath = NUL;
 toggle_bat_choice(choice_count);
    }
    else
    {
 if (default_bat_dir != ((void*)0))

     strcpy(batpath, default_bat_dir);
 else
 {


     p = getenv("WINDIR");
     if (p != ((void*)0) && *p != NUL)
  strcpy(batpath, p);
     else
     {
  p = getenv("PATH");
  if (p == ((void*)0) || *p == NUL)
      strcpy(batpath, "C:/Windows");
  else
  {
      i = 0;
      while (*p != NUL && *p != ';')
   batpath[i++] = *p++;
      batpath[i] = NUL;
  }
     }
 }
 add_pathsep(batpath);
 set_bat_text(choice_count, batpath, targets[target].batname);

 choices[choice_count].changefunc = change_bat_choice;
    }
    ++choice_count;
}
