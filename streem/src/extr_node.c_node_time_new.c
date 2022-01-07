
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_int ;
struct TYPE_3__ {long sec; long usec; int utc_offset; int type; } ;
typedef TYPE_1__ node_time ;
typedef int node ;


 int NODE_TIME ;
 TYPE_1__* malloc (int) ;
 scalar_t__ strm_time_parse_time (char const*,int ,long*,long*,int*) ;

node*
node_time_new(const char* s, strm_int len)
{
  long sec, usec;
  int utc_offset;
  node_time* ns;

  if (strm_time_parse_time(s, len, &sec, &usec, &utc_offset) < 0) {
    return ((void*)0);
  }
  ns = malloc(sizeof(node_time));
  ns->type = NODE_TIME;
  ns->sec = sec;
  ns->usec = usec;
  ns->utc_offset = utc_offset;
  return (node*)ns;
}
