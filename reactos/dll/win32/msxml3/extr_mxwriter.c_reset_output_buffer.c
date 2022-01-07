
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mxwriter ;


 int close_output_buffer (int *) ;

__attribute__((used)) static inline void reset_output_buffer(mxwriter *This)
{
    close_output_buffer(This);
}
