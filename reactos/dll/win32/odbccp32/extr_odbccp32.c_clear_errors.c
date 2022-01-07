
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ num_errors ;

__attribute__((used)) static void clear_errors(void)
{
    num_errors = 0;
}
