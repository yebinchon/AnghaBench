
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ name_and_columns_t ;



__attribute__((used)) static unsigned int
label_array_len(const name_and_columns_t *labels)
{
 int i = 0;

 while (labels[i].name)
  i++;

 return (i);
}
