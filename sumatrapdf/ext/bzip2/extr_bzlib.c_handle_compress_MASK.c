#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* state; } ;
typedef  TYPE_2__ bz_stream ;
struct TYPE_13__ {scalar_t__ state; scalar_t__ state_out_pos; scalar_t__ numZ; scalar_t__ mode; scalar_t__ avail_in_expect; scalar_t__ nblock; scalar_t__ nblockMAX; TYPE_1__* strm; } ;
struct TYPE_11__ {scalar_t__ avail_in; } ;
typedef  TYPE_3__ EState ;
typedef  int Bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 scalar_t__ BZ_M_FINISHING ; 
 scalar_t__ BZ_M_FLUSHING ; 
 scalar_t__ BZ_M_RUNNING ; 
 scalar_t__ BZ_S_INPUT ; 
 scalar_t__ BZ_S_OUTPUT ; 
 int False ; 
 scalar_t__ True ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static
Bool FUNC6 ( bz_stream* strm )
{
   Bool progress_in  = False;
   Bool progress_out = False;
   EState* s = strm->state;
   
   while (True) {

      if (s->state == BZ_S_OUTPUT) {
         progress_out |= FUNC2 ( s );
         if (s->state_out_pos < s->numZ) break;
         if (s->mode == BZ_M_FINISHING && 
             s->avail_in_expect == 0 &&
             FUNC4(s)) break;
         FUNC5 ( s );
         s->state = BZ_S_INPUT;
         if (s->mode == BZ_M_FLUSHING && 
             s->avail_in_expect == 0 &&
             FUNC4(s)) break;
      }

      if (s->state == BZ_S_INPUT) {
         progress_in |= FUNC1 ( s );
         if (s->mode != BZ_M_RUNNING && s->avail_in_expect == 0) {
            FUNC3 ( s );
            FUNC0 ( s, (Bool)(s->mode == BZ_M_FINISHING) );
            s->state = BZ_S_OUTPUT;
         }
         else
         if (s->nblock >= s->nblockMAX) {
            FUNC0 ( s, False );
            s->state = BZ_S_OUTPUT;
         }
         else
         if (s->strm->avail_in == 0) {
            break;
         }
      }

   }

   return progress_in || progress_out;
}