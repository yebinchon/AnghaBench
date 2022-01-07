
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int dummy; } ;


 int ctx ;
 struct tm* gmtime (scalar_t__*) ;
 struct tm* gmtime_r (scalar_t__*,struct tm*) ;
 scalar_t__ pdf_annot_modification_date (int ,int ) ;
 int selected_annot ;
 int strftime (char*,int,char*,struct tm*) ;
 int ui_label (char*,char*) ;

__attribute__((used)) static void do_annotate_date(void)
{
 time_t secs = pdf_annot_modification_date(ctx, selected_annot);
 if (secs > 0)
 {



  struct tm *tm = gmtime(&secs);

  char buf[100];
  if (tm)
  {
   strftime(buf, sizeof buf, "%Y-%m-%d %H:%M UTC", tm);
   ui_label("Date: %s", buf);
  }
 }
}
