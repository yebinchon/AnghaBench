
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int proba_t ;
struct TYPE_3__ {int first; int last; int* coeffs; int *** stats; } ;
typedef TYPE_1__ VP8Residual ;


 int MAX_VARIABLE_LEVEL ;
 size_t* VP8EncBands ;
 void*** VP8LevelCodes ;
 scalar_t__ VP8RecordStats (int,int *) ;
 int abs (int) ;

int VP8RecordCoeffs(int ctx, const VP8Residual* const res) {
  int n = res->first;

  proba_t* s = res->stats[n][ctx];
  if (res->last < 0) {
    VP8RecordStats(0, s + 0);
    return 0;
  }
  while (n <= res->last) {
    int v;
    VP8RecordStats(1, s + 0);
    while ((v = res->coeffs[n++]) == 0) {
      VP8RecordStats(0, s + 1);
      s = res->stats[VP8EncBands[n]][0];
    }
    VP8RecordStats(1, s + 1);
    if (!VP8RecordStats(2u < (unsigned int)(v + 1), s + 2)) {
      s = res->stats[VP8EncBands[n]][1];
    } else {
      v = abs(v);

      if (!VP8RecordStats(v > 4, s + 3)) {
        if (VP8RecordStats(v != 2, s + 4))
          VP8RecordStats(v == 4, s + 5);
      } else if (!VP8RecordStats(v > 10, s + 6)) {
        VP8RecordStats(v > 6, s + 7);
      } else if (!VP8RecordStats((v >= 3 + (8 << 2)), s + 8)) {
        VP8RecordStats((v >= 3 + (8 << 1)), s + 9);
      } else {
        VP8RecordStats((v >= 3 + (8 << 3)), s + 10);
      }
      s = res->stats[VP8EncBands[n]][2];
    }
  }
  if (n < 16) VP8RecordStats(0, s + 0);
  return 1;
}
