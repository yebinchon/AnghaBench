
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int right ;
typedef int left ;
typedef int increment_t ;
struct TYPE_3__ {double* left_calc; double* right_calc; int b_current; double* coeffs; double* buffer; int coeff_half_len; } ;
typedef TYPE_1__ SINC_FILTER ;


 int MAKE_INCREMENT_T (int ) ;
 double fp_to_double (int) ;
 int fp_to_int (int) ;
 int int_to_fp (int ) ;
 int memset (double*,int ,int) ;

__attribute__((used)) static inline void
calc_output_multi (SINC_FILTER *filter, increment_t increment, increment_t start_filter_index, int channels, double scale, float * output)
{ double fraction, icoeff ;

 double *left, *right ;
 increment_t filter_index, max_filter_index ;
 int data_index, coeff_count, indx, ch ;

 left = filter->left_calc ;
 right = filter->right_calc ;


 max_filter_index = int_to_fp (filter->coeff_half_len) ;


 filter_index = start_filter_index ;
 coeff_count = (max_filter_index - filter_index) / increment ;
 filter_index = filter_index + coeff_count * increment ;
 data_index = filter->b_current - channels * coeff_count ;

 memset (left, 0, sizeof (left [0]) * channels) ;

 do
 { fraction = fp_to_double (filter_index) ;
  indx = fp_to_int (filter_index) ;

  icoeff = filter->coeffs [indx] + fraction * (filter->coeffs [indx + 1] - filter->coeffs [indx]) ;





  ch = channels ;
  do
  {
   switch (ch % 8)
   { default :
     ch -- ;
     left [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 7 :
     ch -- ;
     left [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 6 :
     ch -- ;
     left [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 5 :
     ch -- ;
     left [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 4 :
     ch -- ;
     left [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 3 :
     ch -- ;
     left [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 2 :
     ch -- ;
     left [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 1 :
     ch -- ;
     left [ch] += icoeff * filter->buffer [data_index + ch] ;
    } ;
   }
  while (ch > 0) ;

  filter_index -= increment ;
  data_index = data_index + channels ;
  }
 while (filter_index >= MAKE_INCREMENT_T (0)) ;


 filter_index = increment - start_filter_index ;
 coeff_count = (max_filter_index - filter_index) / increment ;
 filter_index = filter_index + coeff_count * increment ;
 data_index = filter->b_current + channels * (1 + coeff_count) ;

 memset (right, 0, sizeof (right [0]) * channels) ;
 do
 { fraction = fp_to_double (filter_index) ;
  indx = fp_to_int (filter_index) ;

  icoeff = filter->coeffs [indx] + fraction * (filter->coeffs [indx + 1] - filter->coeffs [indx]) ;

  ch = channels ;
  do
  {
   switch (ch % 8)
   { default :
     ch -- ;
     right [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 7 :
     ch -- ;
     right [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 6 :
     ch -- ;
     right [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 5 :
     ch -- ;
     right [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 4 :
     ch -- ;
     right [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 3 :
     ch -- ;
     right [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 2 :
     ch -- ;
     right [ch] += icoeff * filter->buffer [data_index + ch] ;
    case 1 :
     ch -- ;
     right [ch] += icoeff * filter->buffer [data_index + ch] ;
    } ;
   }
  while (ch > 0) ;

  filter_index -= increment ;
  data_index = data_index - channels ;
  }
 while (filter_index > MAKE_INCREMENT_T (0)) ;

 ch = channels ;
 do
 {
  switch (ch % 8)
  { default :
    ch -- ;
    output [ch] = scale * (left [ch] + right [ch]) ;
   case 7 :
    ch -- ;
    output [ch] = scale * (left [ch] + right [ch]) ;
   case 6 :
    ch -- ;
    output [ch] = scale * (left [ch] + right [ch]) ;
   case 5 :
    ch -- ;
    output [ch] = scale * (left [ch] + right [ch]) ;
   case 4 :
    ch -- ;
    output [ch] = scale * (left [ch] + right [ch]) ;
   case 3 :
    ch -- ;
    output [ch] = scale * (left [ch] + right [ch]) ;
   case 2 :
    ch -- ;
    output [ch] = scale * (left [ch] + right [ch]) ;
   case 1 :
    ch -- ;
    output [ch] = scale * (left [ch] + right [ch]) ;
   } ;
  }
 while (ch > 0) ;

 return ;
}
