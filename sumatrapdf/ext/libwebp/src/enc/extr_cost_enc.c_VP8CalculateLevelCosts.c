
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int**** level_cost_; int**** remapped_costs_; scalar_t__ dirty_; int **** coeffs_; } ;
typedef TYPE_1__ VP8EncProba ;


 int MAX_VARIABLE_LEVEL ;
 int NUM_BANDS ;
 int NUM_CTX ;
 int NUM_TYPES ;
 int const VP8BitCost (int,int const) ;
 size_t* VP8EncBands ;
 int const VariableLevelCost (int,int const* const) ;

void VP8CalculateLevelCosts(VP8EncProba* const proba) {
  int ctype, band, ctx;

  if (!proba->dirty_) return;

  for (ctype = 0; ctype < NUM_TYPES; ++ctype) {
    int n;
    for (band = 0; band < NUM_BANDS; ++band) {
      for (ctx = 0; ctx < NUM_CTX; ++ctx) {
        const uint8_t* const p = proba->coeffs_[ctype][band][ctx];
        uint16_t* const table = proba->level_cost_[ctype][band][ctx];
        const int cost0 = (ctx > 0) ? VP8BitCost(1, p[0]) : 0;
        const int cost_base = VP8BitCost(1, p[1]) + cost0;
        int v;
        table[0] = VP8BitCost(0, p[1]) + cost0;
        for (v = 1; v <= MAX_VARIABLE_LEVEL; ++v) {
          table[v] = cost_base + VariableLevelCost(v, p);
        }


      }
    }
    for (n = 0; n < 16; ++n) {
      for (ctx = 0; ctx < NUM_CTX; ++ctx) {
        proba->remapped_costs_[ctype][n][ctx] =
            proba->level_cost_[ctype][VP8EncBands[n]][ctx];
      }
    }
  }
  proba->dirty_ = 0;
}
