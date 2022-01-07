
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;


 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static void
check_allowed_data_len(Size data_length, Size max_size)
{
 if (max_size < data_length)
  elog(ERROR, "trying to serialize more data than was allocated");
}
