
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int errcode_t ;


 int EXT2_ET_CANCEL_REQUESTED ;
 int FormatStatus ;
 scalar_t__ IS_ERROR (int ) ;
 int MSG_217 ;
 int OP_FORMAT ;
 int UpdateProgressWithInfo (int ,int ,int ,int) ;
 int ext2_max_marker ;
 int ext2_percent_share ;
 int ext2_percent_start ;
 float min (int ,float) ;
 int uprintfs (char*) ;

errcode_t ext2fs_print_progress(int64_t cur_value, int64_t max_value)
{
 static int64_t last_value = -1;
 if (max_value == 0)
  return 0;
 UpdateProgressWithInfo(OP_FORMAT, MSG_217, (uint64_t)((ext2_percent_start * max_value) + (ext2_percent_share * cur_value)), max_value);
 cur_value = (int64_t)(((float)cur_value / (float)max_value) * min(ext2_max_marker, (float)max_value));
 if ((cur_value < last_value) || (cur_value > last_value)) {
  last_value = cur_value;
  uprintfs("+");
 }
 return IS_ERROR(FormatStatus) ? EXT2_ET_CANCEL_REQUESTED : 0;
}
