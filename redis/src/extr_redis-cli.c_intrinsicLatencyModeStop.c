
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED (int) ;
 int force_cancel_loop ;

__attribute__((used)) static void intrinsicLatencyModeStop(int s) {
    UNUSED(s);
    force_cancel_loop = 1;
}
