
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vie {scalar_t__ num_processed; } ;



__attribute__((used)) static int
verify_inst_length(struct vie *vie)
{

 if (vie->num_processed)
  return (0);
 else
  return (-1);
}
