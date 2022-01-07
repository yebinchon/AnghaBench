
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 scalar_t__ ELEM_GT (int ,int ) ;
 int ELEM_SWAP (int ,int ) ;

__attribute__((used)) static strm_value
quick_select(strm_value arr[], int n)
{
  int low, high;
  int median;
  int middle, ll, hh;

  low = 0; high = n-1; median = (low + high) / 2;
  for (;;) {
    if (high <= low)
      return arr[median];

    if (high == low + 1) {
      if (ELEM_GT(arr[low],arr[high]))
        ELEM_SWAP(arr[low], arr[high]);
      return arr[median];
    }


    middle = (low + high) / 2;
    if (ELEM_GT(arr[middle], arr[high])) ELEM_SWAP(arr[middle], arr[high]);
    if (ELEM_GT(arr[low], arr[high])) ELEM_SWAP(arr[low], arr[high]);
    if (ELEM_GT(arr[middle], arr[low])) ELEM_SWAP(arr[middle], arr[low]);


    ELEM_SWAP(arr[middle], arr[low+1]);


    ll = low + 1;
    hh = high;
    for (;;) {
      do ll++; while (ELEM_GT(arr[low], arr[ll]));
      do hh--; while (ELEM_GT(arr[hh], arr[low]));

      if (hh < ll)
        break;

      ELEM_SWAP(arr[ll], arr[hh]);
    }


    ELEM_SWAP(arr[low], arr[hh]);


    if (hh <= median)
      low = ll;
    if (hh >= median)
      high = hh - 1;
  }
}
