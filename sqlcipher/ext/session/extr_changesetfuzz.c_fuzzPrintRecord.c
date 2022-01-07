
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_int64 ;
struct TYPE_3__ {int nCol; scalar_t__* aPK; } ;
typedef TYPE_1__ FuzzChangesetGroup ;


 int SQLITE_OK ;
 int fuzzGetI64 (int*) ;
 int fuzzGetVarint (int*,int*) ;
 int memcpy (double*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int fuzzPrintRecord(FuzzChangesetGroup *pGrp, u8 **ppRec, int bPKOnly){
  int rc = SQLITE_OK;
  u8 *p = *ppRec;
  int i;
  const char *zPre = " (";

  for(i=0; i<pGrp->nCol; i++){
    if( bPKOnly==0 || pGrp->aPK[i] ){
      u8 eType = p++[0];
      switch( eType ){
        case 0x00:
          printf("%sn/a", zPre);
          break;

        case 0x01: {
          sqlite3_int64 iVal = 0;
          iVal = fuzzGetI64(p);
          printf("%s%lld", zPre, iVal);
          p += 8;
          break;
        }

        case 0x02: {
          sqlite3_int64 iVal = 0;
          double fVal = 0.0;
          iVal = fuzzGetI64(p);
          memcpy(&fVal, &iVal, 8);
          printf("%s%f", zPre, fVal);
          p += 8;
          break;
        }

        case 0x03:
        case 0x04: {
          int nTxt;
          p += fuzzGetVarint(p, &nTxt);
          printf("%s%s", zPre, eType==0x03 ? "'" : "X'");
          for(i=0; i<nTxt; i++){
            if( eType==0x03 ){
              printf("%c", p[i]);
            }else{
              char aHex[16] = {'0', '1', '2', '3', '4', '5', '6', '7',
                               '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
              };
              printf("%c", aHex[ p[i]>>4 ]);
              printf("%c", aHex[ p[i] & 0x0F ]);
            }
          }
          printf("'");
          p += nTxt;
          break;
        }

        case 0x05:
          printf("%sNULL", zPre);
          break;
      }
      zPre = ", ";
    }
  }
  printf(")");

  *ppRec = p;
  return rc;
}
