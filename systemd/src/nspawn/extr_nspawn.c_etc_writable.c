
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int VOLATILE_OVERLAY ;
 int VOLATILE_YES ;
 int arg_read_only ;
 int arg_volatile_mode ;

__attribute__((used)) static bool etc_writable(void) {
        return !arg_read_only || IN_SET(arg_volatile_mode, VOLATILE_YES, VOLATILE_OVERLAY);
}
