
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_ ;
typedef int _TCHAR ;


 int _T (char*) ;
 int _tprintf (int ,unsigned int,int *,...) ;
 int assert (int) ;
 int ** slice_names_plural ;
 int ** slice_names_singular ;
 scalar_t__* ticks_per_slice ;

void print_uptime
(
 uint64_ tickcount,
 uint64_ prevsliceval,
 _TCHAR * prevsliceunit,
 int curslice
)
{
 uint64_ tick_cur = tickcount / ticks_per_slice[curslice];
 uint64_ tick_residual = tickcount % ticks_per_slice[curslice];

 assert(tick_cur <= (~((uint64_)0)));

 if(tick_residual == 0)
 {


  if(prevsliceval == 0)
  {

   _tprintf
   (
    _T("%u %s"),
    (unsigned)tick_cur,
    (tick_cur == 1 ? slice_names_singular : slice_names_plural)[curslice]
   );
  }
  else
  {

   assert(prevsliceunit);


   _tprintf
   (
    _T("%u %s %s %u %s"),
    (unsigned)prevsliceval,
    prevsliceunit,
    _T("and"),
    (unsigned)tick_cur,
    (tick_cur == 1 ? slice_names_singular : slice_names_plural)[curslice]
   );
  }
 }
 else if(tick_cur != 0)
 {


  if(prevsliceval != 0)
  {

   assert(prevsliceunit);
   _tprintf(_T("%u %s, "), (unsigned)prevsliceval, prevsliceunit);
  }


  print_uptime
  (
   tick_residual,
   tick_cur,
   (tick_cur == 1 ? slice_names_singular : slice_names_plural)[curslice],
   curslice + 1
  );
 }
 else
 {




  print_uptime(tick_residual, prevsliceval, prevsliceunit, curslice + 1);
 }
}
