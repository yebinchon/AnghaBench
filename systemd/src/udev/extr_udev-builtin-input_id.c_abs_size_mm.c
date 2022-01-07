
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_absinfo {int maximum; int minimum; int resolution; } ;



__attribute__((used)) static int abs_size_mm(const struct input_absinfo *absinfo) {

        return (absinfo->maximum - absinfo->minimum) / absinfo->resolution;
}
