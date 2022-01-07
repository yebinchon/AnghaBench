
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
func_to_hook(int arg1, int arg2) {
 return arg1 + arg2;
}
