
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eStage; int nFrame; int nStep; int nPhaseOneStep; int nProgress; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int const i64 ;






 int assert (int ) ;

void sqlite3rbu_bp_progress(sqlite3rbu *p, int *pnOne, int *pnTwo){
  const int MAX_PROGRESS = 10000;
  switch( p->eStage ){
    case 128:
      if( p->nPhaseOneStep>0 ){
        *pnOne = (int)(MAX_PROGRESS * (i64)p->nProgress/(i64)p->nPhaseOneStep);
      }else{
        *pnOne = -1;
      }
      *pnTwo = 0;
      break;

    case 129:
      *pnOne = MAX_PROGRESS;
      *pnTwo = 0;
      break;

    case 131:
      *pnOne = MAX_PROGRESS;
      *pnTwo = (int)(MAX_PROGRESS * (i64)p->nStep / (i64)p->nFrame);
      break;

    case 130:
      *pnOne = MAX_PROGRESS;
      *pnTwo = MAX_PROGRESS;
      break;

    default:
      assert( 0 );
  }
}
