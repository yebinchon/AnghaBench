
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MSG_191 ;
 int MSG_235 ;
 int OP_BADBLOCKS ;
 scalar_t__ OP_READ ;
 scalar_t__ OP_WRITE ;
 int PrintInfo (int ,int ,int ,int,int,float,int ,int ,int ) ;
 int UpdateProgress (int ,int) ;
 float calc_percent (unsigned long,unsigned long) ;
 scalar_t__ cur_op ;
 int cur_pattern ;
 scalar_t__ currently_testing ;
 int lmprintf (scalar_t__) ;
 int nr_pattern ;
 scalar_t__ num_blocks ;
 int num_corruption_errors ;
 int num_read_errors ;
 int num_write_errors ;

__attribute__((used)) static void print_status(void)
{
 float percent;

 percent = calc_percent((unsigned long) currently_testing,
     (unsigned long) num_blocks);
 PrintInfo(0, MSG_235, lmprintf(MSG_191 + ((cur_op==OP_WRITE)?0:1)),
    cur_pattern, nr_pattern,
    percent,
    num_read_errors,
    num_write_errors,
    num_corruption_errors);
 percent = (percent/2.0f) + ((cur_op==OP_READ)? 50.0f : 0.0f);
 UpdateProgress(OP_BADBLOCKS, (((cur_pattern-1)*100.0f) + percent) / nr_pattern);
}
