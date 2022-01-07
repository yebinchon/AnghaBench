
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int image_size; } ;


 int MSG_261 ;
 int OP_FORMAT ;
 int UpdateProgressWithInfo (int ,int ,int const,int ) ;
 TYPE_1__ img_report ;

__attribute__((used)) static void update_progress(const uint64_t processed_bytes)
{
 UpdateProgressWithInfo(OP_FORMAT, MSG_261, processed_bytes, img_report.image_size);
}
