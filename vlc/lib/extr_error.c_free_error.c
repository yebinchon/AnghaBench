
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_msg (int ) ;
 int get_error () ;

__attribute__((used)) static void free_error (void)
{
    free_msg (get_error ());
}
