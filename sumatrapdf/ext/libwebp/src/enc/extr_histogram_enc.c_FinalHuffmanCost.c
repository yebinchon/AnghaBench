
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* counts; double** streaks; } ;
typedef TYPE_1__ VP8LStreaks ;


 double InitialHuffmanCost () ;

__attribute__((used)) static double FinalHuffmanCost(const VP8LStreaks* const stats) {


  double retval = InitialHuffmanCost();


  retval += stats->counts[0] * 1.5625 + 0.234375 * stats->streaks[0][1];


  retval += stats->counts[1] * 2.578125 + 0.703125 * stats->streaks[1][1];


  retval += 1.796875 * stats->streaks[0][0];

  retval += 3.28125 * stats->streaks[1][0];
  return retval;
}
