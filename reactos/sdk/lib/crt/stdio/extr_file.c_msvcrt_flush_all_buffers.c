
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _flag; } ;
typedef TYPE_1__ FILE ;


 int LOCK_FILES () ;
 int MSVCRT_stream_idx ;
 int TRACE (char*,int) ;
 int UNLOCK_FILES () ;
 int fflush (TYPE_1__*) ;
 TYPE_1__* msvcrt_get_file (int) ;

__attribute__((used)) static int msvcrt_flush_all_buffers(int mask)
{
  int i, num_flushed = 0;
  FILE *file;

  LOCK_FILES();
  for (i = 0; i < MSVCRT_stream_idx; i++) {
    file = msvcrt_get_file(i);

    if (file->_flag)
    {
      if(file->_flag & mask) {
 fflush(file);
        num_flushed++;
      }
    }
  }
  UNLOCK_FILES();

  TRACE(":flushed (%d) handles\n",num_flushed);
  return num_flushed;
}
