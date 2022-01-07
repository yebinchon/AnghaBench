
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_index {int step; scalar_t__ fill; } ;
typedef int off_t ;



__attribute__((used)) static off_t fi_next(struct frame_index *fi)
{
 return (off_t)fi->fill*fi->step;
}
