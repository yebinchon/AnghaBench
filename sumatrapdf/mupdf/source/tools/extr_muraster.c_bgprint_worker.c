
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ fz_cookie ;
typedef int cookie ;
struct TYPE_6__ {int pagenum; int stop; int render; int solo; int filename; int interptime; int ctx; int status; int start; } ;


 int DEBUG_THREADS (char*) ;
 TYPE_4__ bgprint ;
 int gettime () ;
 int memset (TYPE_1__*,int ,int) ;
 int mu_trigger_semaphore (int *) ;
 int mu_wait_semaphore (int *) ;
 int try_render_page (int ,int,TYPE_1__*,int,int ,int ,int,int ,int *) ;

__attribute__((used)) static void bgprint_worker(void *arg)
{
 fz_cookie cookie = { 0 };
 int pagenum;

 (void)arg;

 do
 {
  DEBUG_THREADS(("BGPrint waiting\n"));
  mu_wait_semaphore(&bgprint.start);
  pagenum = bgprint.pagenum;
  DEBUG_THREADS(("BGPrint woken for pagenum %d\n", pagenum));
  if (pagenum >= 0)
  {
   int start = gettime();
   memset(&cookie, 0, sizeof(cookie));
   bgprint.status = try_render_page(bgprint.ctx, pagenum, &cookie, start, bgprint.interptime, bgprint.filename, 1, bgprint.solo, &bgprint.render);
  }
  DEBUG_THREADS(("BGPrint completed page %d\n", pagenum));
  mu_trigger_semaphore(&bgprint.stop);
 }
 while (pagenum >= 0);
}
