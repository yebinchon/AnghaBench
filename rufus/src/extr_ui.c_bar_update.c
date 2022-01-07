
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct bar_progress_hist {scalar_t__ total_time; scalar_t__* times; size_t pos; scalar_t__* bytes; int total_bytes; } ;
struct bar_progress {scalar_t__ recent_start; scalar_t__ recent_bytes; scalar_t__ stalled; struct bar_progress_hist hist; } ;


 scalar_t__ FALSE ;
 size_t SPEED_HISTORY_SIZE ;
 scalar_t__ SPEED_SAMPLE_MIN ;
 scalar_t__ STALL_START_TIME ;
 scalar_t__ TRUE ;
 int memset (struct bar_progress_hist*,int ,int) ;

__attribute__((used)) static void bar_update(struct bar_progress* bp, uint64_t howmuch, uint64_t dltime)
{
 struct bar_progress_hist* hist = &bp->hist;
 uint64_t recent_age = dltime - bp->recent_start;


 bp->recent_bytes += howmuch;




 if (recent_age < SPEED_SAMPLE_MIN)
  return;

 if (howmuch == 0) {




  if (recent_age >= STALL_START_TIME) {



   bp->stalled = TRUE;
   memset(hist, 0, sizeof(struct bar_progress_hist));
   bp->recent_bytes = 0;
  }
  return;
 }




 if (bp->stalled) {
  bp->stalled = FALSE;





  recent_age = 1000;
 }





 hist->total_time -= hist->times[hist->pos];
 hist->total_bytes -= hist->bytes[hist->pos];


 hist->times[hist->pos] = recent_age;
 hist->bytes[hist->pos] = bp->recent_bytes;
 hist->total_time += recent_age;
 hist->total_bytes += bp->recent_bytes;


 bp->recent_start = dltime;
 bp->recent_bytes = 0;


 if (++hist->pos == SPEED_HISTORY_SIZE)
  hist->pos = 0;
}
