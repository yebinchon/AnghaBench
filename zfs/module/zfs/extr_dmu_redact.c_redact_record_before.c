
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redact_record {scalar_t__ eos_marker; int datablksz; int end_blkid; int end_object; int start_blkid; int start_object; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 scalar_t__ redact_range_compare (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static boolean_t
redact_record_before(const struct redact_record *from,
    const struct redact_record *to)
{
 if (from->eos_marker == B_TRUE)
  return (B_FALSE);
 else if (to->eos_marker == B_TRUE)
  return (B_TRUE);
 return (redact_range_compare(from->start_object, from->start_blkid,
     from->datablksz, to->end_object, to->end_blkid,
     to->datablksz) <= 0);
}
