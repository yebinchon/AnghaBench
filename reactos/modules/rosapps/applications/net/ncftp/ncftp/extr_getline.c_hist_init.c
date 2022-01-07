
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIST_SIZE ;
 char** hist_buf ;
 char* hist_empty_elem ;

__attribute__((used)) static void
hist_init(void)
{
    int i;

    hist_buf[0] = hist_empty_elem;
    for (i=1; i < HIST_SIZE; i++)
 hist_buf[i] = (char *)0;
}
