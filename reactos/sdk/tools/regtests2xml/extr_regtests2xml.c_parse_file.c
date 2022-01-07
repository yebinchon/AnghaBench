
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int succeeded; struct TYPE_4__* next; int result; int testname; } ;
typedef int TEST_RESULT_INFO ;
typedef TYPE_1__* PTEST_RESULT_INFO ;


 int close_file () ;
 int exit (int) ;
 scalar_t__ file_pointer ;
 TYPE_1__* malloc (int) ;
 int printf (char*) ;
 int read_file (char*) ;
 int read_until (char,int ) ;
 int read_until_end (int ) ;
 int skip_to_next_test () ;
 int skip_whitespace () ;
 scalar_t__ strncmp (int ,char*,int) ;
 TYPE_1__* test_result_info_list ;

__attribute__((used)) static void
parse_file(char *filename)
{
  PTEST_RESULT_INFO test_result_info;

  read_file(filename);

  do
    {
      if (!skip_to_next_test())
        {
          break;
        }






      test_result_info = malloc(sizeof(TEST_RESULT_INFO));
      if (test_result_info == ((void*)0))
        {
       printf("Out of memory\n");
       exit(1);
        }


      skip_whitespace();


      file_pointer++;


   read_until(')', test_result_info->testname);


      file_pointer++;


      file_pointer++;


      file_pointer += 7;


      file_pointer++;


   read_until_end(test_result_info->result);

   if (strncmp(test_result_info->result, "Success", 7) == 0)
        {
       test_result_info->succeeded = 1;
        }
      else
        {
          test_result_info->succeeded = 0;
        }

      test_result_info->next = test_result_info_list;
      test_result_info_list = test_result_info;
    } while (1);

  close_file();
}
