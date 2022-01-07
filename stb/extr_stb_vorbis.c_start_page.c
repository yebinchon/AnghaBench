
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorb ;


 int VORBIS_missing_capture_pattern ;
 int capture_pattern (int *) ;
 int error (int *,int ) ;
 int start_page_no_capturepattern (int *) ;

__attribute__((used)) static int start_page(vorb *f)
{
   if (!capture_pattern(f)) return error(f, VORBIS_missing_capture_pattern);
   return start_page_no_capturepattern(f);
}
