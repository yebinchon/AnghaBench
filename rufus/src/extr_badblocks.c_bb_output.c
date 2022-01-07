
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long errcode_t ;
typedef enum error_types { ____Placeholder_error_types } error_types ;
typedef scalar_t__ blk64_t ;


 int CORRUPTION_ERROR ;
 int READ_ERROR ;
 int WRITE_ERROR ;
 long bb_badblocks_list_add (int ,scalar_t__) ;
 int bb_badblocks_list_iterate (scalar_t__,scalar_t__*) ;
 scalar_t__ bb_badblocks_list_test (int ,scalar_t__) ;
 scalar_t__ bb_iter ;
 int bb_list ;
 int bb_prefix ;
 int fflush (int ) ;
 int fprintf (int ,char*,unsigned long,char*) ;
 int log_fd ;
 scalar_t__ next_bad ;
 int num_corruption_errors ;
 int num_read_errors ;
 int num_write_errors ;
 int uprintf (char*,int ,long) ;

__attribute__((used)) static int bb_output (blk64_t bad, enum error_types error_type)
{
 errcode_t error_code;

 if (bb_badblocks_list_test(bb_list, bad))
  return 0;

 uprintf("%s%lu\n", bb_prefix, (unsigned long)bad);
 fprintf(log_fd, "Block %lu: %s error\n", (unsigned long)bad, (error_type==READ_ERROR)?"read":
  ((error_type == WRITE_ERROR)?"write":"corruption"));
 fflush(log_fd);

 error_code = bb_badblocks_list_add(bb_list, bad);
 if (error_code) {
  uprintf("%sError %d adding to in-memory bad block list", bb_prefix, error_code);
  return 0;
 }





 if (bb_iter && bad < next_bad)
  bb_badblocks_list_iterate (bb_iter, &next_bad);

 if (error_type == READ_ERROR) {
   num_read_errors++;
 } else if (error_type == WRITE_ERROR) {
   num_write_errors++;
 } else if (error_type == CORRUPTION_ERROR) {
   num_corruption_errors++;
 }
 return 1;
}
