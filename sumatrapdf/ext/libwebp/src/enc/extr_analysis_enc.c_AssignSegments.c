
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int alpha_; int segment_; } ;
typedef TYPE_3__ VP8MBInfo ;
struct TYPE_8__ {int num_segments_; } ;
struct TYPE_11__ {int mb_w_; int mb_h_; TYPE_2__* config_; TYPE_3__* mb_info_; TYPE_1__ segment_hdr_; } ;
typedef TYPE_4__ VP8Encoder ;
struct TYPE_9__ {int preprocessing; } ;


 int MAX_ALPHA ;
 int MAX_ITERS_K_MEANS ;
 int NUM_MB_SEGMENTS ;
 int SetSegmentAlphas (TYPE_4__* const,int*,int) ;
 int SmoothSegmentMap (TYPE_4__* const) ;
 scalar_t__ abs (int) ;
 int assert (int) ;

__attribute__((used)) static void AssignSegments(VP8Encoder* const enc,
                           const int alphas[MAX_ALPHA + 1]) {



  const int nb = (enc->segment_hdr_.num_segments_ < NUM_MB_SEGMENTS) ?
                 enc->segment_hdr_.num_segments_ : NUM_MB_SEGMENTS;
  int centers[NUM_MB_SEGMENTS];
  int weighted_average = 0;
  int map[MAX_ALPHA + 1];
  int a, n, k;
  int min_a = 0, max_a = MAX_ALPHA, range_a;

  int accum[NUM_MB_SEGMENTS], dist_accum[NUM_MB_SEGMENTS];

  assert(nb >= 1);
  assert(nb <= NUM_MB_SEGMENTS);


  for (n = 0; n <= MAX_ALPHA && alphas[n] == 0; ++n) {}
  min_a = n;
  for (n = MAX_ALPHA; n > min_a && alphas[n] == 0; --n) {}
  max_a = n;
  range_a = max_a - min_a;


  for (k = 0, n = 1; k < nb; ++k, n += 2) {
    assert(n < 2 * nb);
    centers[k] = min_a + (n * range_a) / (2 * nb);
  }

  for (k = 0; k < MAX_ITERS_K_MEANS; ++k) {
    int total_weight;
    int displaced;

    for (n = 0; n < nb; ++n) {
      accum[n] = 0;
      dist_accum[n] = 0;
    }

    n = 0;
    for (a = min_a; a <= max_a; ++a) {
      if (alphas[a]) {
        while (n + 1 < nb && abs(a - centers[n + 1]) < abs(a - centers[n])) {
          n++;
        }
        map[a] = n;

        dist_accum[n] += a * alphas[a];
        accum[n] += alphas[a];
      }
    }


    displaced = 0;
    weighted_average = 0;
    total_weight = 0;
    for (n = 0; n < nb; ++n) {
      if (accum[n]) {
        const int new_center = (dist_accum[n] + accum[n] / 2) / accum[n];
        displaced += abs(centers[n] - new_center);
        centers[n] = new_center;
        weighted_average += new_center * accum[n];
        total_weight += accum[n];
      }
    }
    weighted_average = (weighted_average + total_weight / 2) / total_weight;
    if (displaced < 5) break;
  }


  for (n = 0; n < enc->mb_w_ * enc->mb_h_; ++n) {
    VP8MBInfo* const mb = &enc->mb_info_[n];
    const int alpha = mb->alpha_;
    mb->segment_ = map[alpha];
    mb->alpha_ = centers[map[alpha]];
  }

  if (nb > 1) {
    const int smooth = (enc->config_->preprocessing & 1);
    if (smooth) SmoothSegmentMap(enc);
  }

  SetSegmentAlphas(enc, centers, weighted_average);
}
