
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_36__ {int cksum1; int cksum0; TYPE_1__* aRegion; } ;
struct TYPE_31__ {TYPE_7__ log; } ;
struct TYPE_33__ {scalar_t__ bRoTrans; int pEnv; TYPE_3__* pShmhdr; TYPE_2__ treehdr; } ;
typedef TYPE_4__ lsm_db ;
struct TYPE_34__ {int n; scalar_t__ z; } ;
struct TYPE_35__ {int iOff; int iBuf; TYPE_5__ buf; int cksum1; int cksum0; } ;
struct TYPE_32__ {int aSnap2; } ;
struct TYPE_30__ {scalar_t__ iStart; int iEnd; } ;
typedef TYPE_5__ LsmString ;
typedef TYPE_6__ LogReader ;
typedef TYPE_7__ DbLog ;
 int LSM_OK ;
 int assert (int) ;
 int logReaderBlob (TYPE_6__*,TYPE_5__*,int,int**,int*) ;
 int logReaderByte (TYPE_6__*,int*,int*) ;
 int logReaderCksum (TYPE_6__*,TYPE_5__*,int*,int*) ;
 int logReaderInit (TYPE_4__*,TYPE_7__*,int,TYPE_6__*) ;
 int logReaderVarint (TYPE_6__*,TYPE_5__*,int*,int*) ;
 int logRequireCksum (TYPE_6__*,int) ;
 int lsmCheckpointLogoffset (int ,TYPE_7__*) ;
 int lsmCheckpointZeroLogoffset (TYPE_4__*) ;
 int lsmFinishRecovery (TYPE_4__*) ;
 int lsmFsCloseLog (TYPE_4__*) ;
 int lsmFsOpenLog (TYPE_4__*,int*) ;
 int lsmStringClear (TYPE_5__*) ;
 int lsmStringInit (TYPE_5__*,int ) ;
 int lsmTreeDelete (TYPE_4__*,int*,int,int*,int) ;
 int lsmTreeInit (TYPE_4__*) ;
 int lsmTreeInsert (TYPE_4__*,int*,int,int*,int) ;

int lsmLogRecover(lsm_db *pDb){
  LsmString buf1;
  LsmString buf2;
  LogReader reader;
  int rc = LSM_OK;
  int nCommit = 0;
  int iPass;
  int nJump = 0;
  DbLog *pLog;
  int bOpen;

  rc = lsmFsOpenLog(pDb, &bOpen);
  if( rc!=LSM_OK ) return rc;

  rc = lsmTreeInit(pDb);
  if( rc!=LSM_OK ) return rc;

  pLog = &pDb->treehdr.log;
  lsmCheckpointLogoffset(pDb->pShmhdr->aSnap2, pLog);

  logReaderInit(pDb, pLog, 1, &reader);
  lsmStringInit(&buf1, pDb->pEnv);
  lsmStringInit(&buf2, pDb->pEnv);





  if( bOpen ){
    for(iPass=0; iPass<2 && rc==LSM_OK; iPass++){
      int bEof = 0;

      while( rc==LSM_OK && !bEof ){
        u8 eType = 0;
        logReaderByte(&reader, &eType, &rc);

        switch( eType ){
          case 131:
            break;

          case 130: {
            int nPad;
            logReaderVarint(&reader, &buf1, &nPad, &rc);
            logReaderBlob(&reader, &buf1, nPad, 0, &rc);
            break;
          }

          case 134:
          case 133:
          case 129:
          case 128: {
            int nKey;
            int nVal;
            u8 *aVal;
            logReaderVarint(&reader, &buf1, &nKey, &rc);
            logReaderVarint(&reader, &buf2, &nVal, &rc);

            if( eType==128 || eType==133 ){
              logReaderCksum(&reader, &buf1, &bEof, &rc);
            }else{
              bEof = logRequireCksum(&reader, nKey+nVal);
            }
            if( bEof ) break;

            logReaderBlob(&reader, &buf1, nKey, 0, &rc);
            logReaderBlob(&reader, &buf2, nVal, &aVal, &rc);
            if( iPass==1 && rc==LSM_OK ){
              if( eType==129 || eType==128 ){
                rc = lsmTreeInsert(pDb, (u8 *)buf1.z, nKey, aVal, nVal);
              }else{
                rc = lsmTreeDelete(pDb, (u8 *)buf1.z, nKey, aVal, nVal);
              }
            }
            break;
          }

          case 136:
          case 135: {
            int nKey; u8 *aKey;
            logReaderVarint(&reader, &buf1, &nKey, &rc);

            if( eType==135 ){
              logReaderCksum(&reader, &buf1, &bEof, &rc);
            }else{
              bEof = logRequireCksum(&reader, nKey);
            }
            if( bEof ) break;

            logReaderBlob(&reader, &buf1, nKey, &aKey, &rc);
            if( iPass==1 && rc==LSM_OK ){
              rc = lsmTreeInsert(pDb, aKey, nKey, ((void*)0), -1);
            }
            break;
          }

          case 137:
            logReaderCksum(&reader, &buf1, &bEof, &rc);
            if( bEof==0 ){
              nCommit++;
              assert( nCommit>0 || iPass==1 );
              if( nCommit==0 ) bEof = 1;
            }
            break;

          case 132: {
            int iOff = 0;
            logReaderVarint(&reader, &buf1, &iOff, &rc);
            if( rc==LSM_OK ){
              if( iPass==1 ){
                if( pLog->aRegion[2].iStart==0 ){
                  assert( pLog->aRegion[1].iStart==0 );
                  pLog->aRegion[1].iEnd = reader.iOff;
                }else{
                  assert( pLog->aRegion[0].iStart==0 );
                  pLog->aRegion[0].iStart = pLog->aRegion[2].iStart;
                  pLog->aRegion[0].iEnd = reader.iOff-reader.buf.n+reader.iBuf;
                }
                pLog->aRegion[2].iStart = iOff;
              }else{
                if( (nJump++)==2 ){
                  bEof = 1;
                }
              }

              reader.iOff = iOff;
              reader.buf.n = reader.iBuf;
            }
            break;
          }

          default:

            bEof = 1;
            break;
        }
      }

      if( rc==LSM_OK && iPass==0 ){
        if( nCommit==0 ){
          if( pLog->aRegion[2].iStart==0 ){
            iPass = 1;
          }else{
            pLog->aRegion[2].iStart = 0;
            iPass = -1;
            lsmCheckpointZeroLogoffset(pDb);
          }
        }
        logReaderInit(pDb, pLog, 0, &reader);
        nCommit = nCommit * -1;
      }
    }
  }


  if( rc==LSM_OK ){
    pLog->aRegion[2].iEnd = reader.iOff - reader.buf.n + reader.iBuf;
    pLog->cksum0 = reader.cksum0;
    pLog->cksum1 = reader.cksum1;
  }

  if( rc==LSM_OK ){
    rc = lsmFinishRecovery(pDb);
  }else{
    lsmFinishRecovery(pDb);
  }

  if( pDb->bRoTrans ){
    lsmFsCloseLog(pDb);
  }

  lsmStringClear(&buf1);
  lsmStringClear(&buf2);
  lsmStringClear(&reader.buf);
  return rc;
}
