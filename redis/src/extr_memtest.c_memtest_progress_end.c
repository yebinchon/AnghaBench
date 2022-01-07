
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void memtest_progress_end(void) {
    printf("\x1b[H\x1b[2J");
}
