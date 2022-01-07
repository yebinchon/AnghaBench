
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tag_id; char* name; struct TYPE_4__* next; int filename; } ;
typedef TYPE_1__* PAPI_INFO ;
typedef int API_INFO ;


 int TAG_UNKNOWN ;
 TYPE_1__* api_info_list ;
 int close_file () ;
 int exit (int) ;
 int get_filename (char*,char*,int ) ;
 TYPE_1__* malloc (int) ;
 int printf (char*,...) ;
 int read_file (char*) ;
 int skip_comments () ;
 scalar_t__ skip_to_next_name (char*) ;
 int skip_to_next_tag () ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
parse_file(char *fullname, char *cvspath, char *filename)
{
  PAPI_INFO api_info;
  char prev[200];
  char name[200];
  int tag_id;

  read_file(fullname);

  prev[0] = 0;
  do
    {
      tag_id = skip_to_next_tag();
      if (tag_id == TAG_UNKNOWN)
        {
          break;
        }


      skip_comments();

      if (skip_to_next_name(name))
        {
          if (strlen(name) == 0)
            {
              printf("Warning: empty function name in file %s. Previous function name was %s.\n",
                fullname, prev);
            }
          api_info = malloc(sizeof(API_INFO));
          if (api_info == ((void*)0))
            {
              printf("Out of memory\n");
              exit(1);
            }

          api_info->tag_id = tag_id;
          strcpy(api_info->name, name);

          get_filename(cvspath, filename, api_info->filename);

          api_info->next = api_info_list;
          api_info_list = api_info;
          strcpy(prev, name);
        }
    } while (1);

  close_file();
}
