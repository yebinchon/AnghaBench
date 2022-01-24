#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_3__ {int nCol; scalar_t__* aPK; } ;
typedef  TYPE_1__ FuzzChangesetGroup ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (double*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(FuzzChangesetGroup *pGrp, u8 **ppRec, int bPKOnly){
  int rc = SQLITE_OK;
  u8 *p = *ppRec;
  int i;
  const char *zPre = " (";

  for(i=0; i<pGrp->nCol; i++){
    if( bPKOnly==0 || pGrp->aPK[i] ){
      u8 eType = p++[0];
      switch( eType ){
        case 0x00:                    /* undefined */
          FUNC3("%sn/a", zPre);
          break;

        case 0x01: {                  /* integer */
          sqlite3_int64 iVal = 0;
          iVal = FUNC0(p);
          FUNC3("%s%lld", zPre, iVal);
          p += 8;
          break;
        }

        case 0x02: {                  /* real */
          sqlite3_int64 iVal = 0;
          double fVal = 0.0;
          iVal = FUNC0(p);
          FUNC2(&fVal, &iVal, 8);
          FUNC3("%s%f", zPre, fVal);
          p += 8;
          break;
        }

        case 0x03:                    /* text */
        case 0x04: {                  /* blob */
          int nTxt;
          p += FUNC1(p, &nTxt);
          FUNC3("%s%s", zPre, eType==0x03 ? "'" : "X'");
          for(i=0; i<nTxt; i++){
            if( eType==0x03 ){
              FUNC3("%c", p[i]);
            }else{
              char aHex[16] = {'0', '1', '2', '3', '4', '5', '6', '7',
                               '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
              };
              FUNC3("%c", aHex[ p[i]>>4 ]);
              FUNC3("%c", aHex[ p[i] & 0x0F ]);
            }
          }
          FUNC3("'");
          p += nTxt;
          break;
        }

        case 0x05:                    /* null */
          FUNC3("%sNULL", zPre);
          break;
      }
      zPre = ", ";
    }
  }
  FUNC3(")");

  *ppRec = p;
  return rc;
}