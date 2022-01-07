
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ user_data; } ;
typedef TYPE_1__ WebPPicture ;


 int fprintf (int ,char*,char*,int) ;
 int stderr ;

__attribute__((used)) static int ProgressReport(int percent, const WebPPicture* const picture) {
  fprintf(stderr, "[%s]: %3d %%      \r",
          (char*)picture->user_data, percent);
  return 1;
}
