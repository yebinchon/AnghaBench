
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ _flag; } ;
typedef TYPE_1__ FILE ;


 int MSVCRT_max_streams ;
 int MSVCRT_stream_idx ;
 TYPE_1__* msvcrt_get_file (int) ;

__attribute__((used)) static FILE* msvcrt_alloc_fp(void)
{
  int i;
  FILE *file;

  for (i = 3; i < MSVCRT_max_streams; i++)
  {
    file = msvcrt_get_file(i);
    if (!file)
      return ((void*)0);

    if (file->_flag == 0)
    {
      if (i == MSVCRT_stream_idx) MSVCRT_stream_idx++;
      return file;
    }
  }

  return ((void*)0);
}
