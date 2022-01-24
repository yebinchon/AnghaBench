#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__** bands_; TYPE_1__*** bands_ptr_; } ;
typedef  TYPE_2__ VP8Proba ;
struct TYPE_7__ {void* skip_p_; scalar_t__ use_skip_proba_; TYPE_2__ proba_; } ;
typedef  TYPE_3__ VP8Decoder ;
typedef  int /*<<< orphan*/  VP8BitReader ;
struct TYPE_5__ {int** probas_; } ;

/* Variables and functions */
 void***** CoeffsProba0 ; 
 int /*<<< orphan*/ **** CoeffsUpdateProba ; 
 int NUM_BANDS ; 
 int NUM_CTX ; 
 int NUM_PROBAS ; 
 int NUM_TYPES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ * const,int,char*) ; 
 size_t* kBands ; 

void FUNC3(VP8BitReader* const br, VP8Decoder* const dec) {
  VP8Proba* const proba = &dec->proba_;
  int t, b, c, p;
  for (t = 0; t < NUM_TYPES; ++t) {
    for (b = 0; b < NUM_BANDS; ++b) {
      for (c = 0; c < NUM_CTX; ++c) {
        for (p = 0; p < NUM_PROBAS; ++p) {
          const int v =
              FUNC1(br, CoeffsUpdateProba[t][b][c][p], "global-header") ?
                        FUNC2(br, 8, "global-header") :
                        CoeffsProba0[t][b][c][p];
          proba->bands_[t][b].probas_[c][p] = v;
        }
      }
    }
    for (b = 0; b < 16 + 1; ++b) {
      proba->bands_ptr_[t][b] = &proba->bands_[t][kBands[b]];
    }
  }
  dec->use_skip_proba_ = FUNC0(br, "global-header");
  if (dec->use_skip_proba_) {
    dec->skip_p_ = FUNC2(br, 8, "global-header");
  }
}