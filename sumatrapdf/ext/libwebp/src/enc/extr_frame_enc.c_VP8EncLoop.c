
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int VP8RDLevel ;
typedef int VP8ModeScore ;
struct TYPE_21__ {int use_skip_proba_; } ;
struct TYPE_22__ {int rd_opt_level_; TYPE_1__ proba_; } ;
typedef TYPE_2__ VP8Encoder ;
struct TYPE_23__ {int bw_; } ;
typedef TYPE_3__ VP8EncIterator ;


 int CodeResiduals (int ,TYPE_3__*,int *) ;
 int PostLoopFinalize (TYPE_3__*,int) ;
 int PreLoopInitialize (TYPE_2__* const) ;
 int ResetAfterSkip (TYPE_3__*) ;
 int StatLoop (TYPE_2__* const) ;
 int StoreSideInfo (TYPE_3__*) ;
 int VP8Decimate (TYPE_3__*,int *,int const) ;
 int VP8InitFilter (TYPE_3__*) ;
 int VP8IteratorExport (TYPE_3__*) ;
 int VP8IteratorImport (TYPE_3__*,int *) ;
 int VP8IteratorInit (TYPE_2__* const,TYPE_3__*) ;
 scalar_t__ VP8IteratorNext (TYPE_3__*) ;
 int VP8IteratorProgress (TYPE_3__*,int) ;
 int VP8IteratorSaveBoundary (TYPE_3__*) ;
 int VP8StoreFilterStats (TYPE_3__*) ;

int VP8EncLoop(VP8Encoder* const enc) {
  VP8EncIterator it;
  int ok = PreLoopInitialize(enc);
  if (!ok) return 0;

  StatLoop(enc);

  VP8IteratorInit(enc, &it);
  VP8InitFilter(&it);
  do {
    VP8ModeScore info;
    const int dont_use_skip = !enc->proba_.use_skip_proba_;
    const VP8RDLevel rd_opt = enc->rd_opt_level_;

    VP8IteratorImport(&it, ((void*)0));


    if (!VP8Decimate(&it, &info, rd_opt) || dont_use_skip) {
      CodeResiduals(it.bw_, &it, &info);
    } else {
      ResetAfterSkip(&it);
    }
    StoreSideInfo(&it);
    VP8StoreFilterStats(&it);
    VP8IteratorExport(&it);
    ok = VP8IteratorProgress(&it, 20);
    VP8IteratorSaveBoundary(&it);
  } while (ok && VP8IteratorNext(&it));

  return PostLoopFinalize(&it, ok);
}
