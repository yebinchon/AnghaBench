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
typedef  int u32 ;
struct TYPE_3__ {int* aiException; int nException; unsigned char* aTokenChar; int* aCategory; } ;
typedef  TYPE_1__ Unicode61Tokenizer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char const*,int) ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 size_t FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int*,int) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
  Unicode61Tokenizer *p,          /* Tokenizer object */
  const char *z,                  /* Characters to treat as exceptions */
  int bTokenChars                 /* 1 for 'tokenchars', 0 for 'separators' */
){
  int rc = SQLITE_OK;
  int n = (int)FUNC6(z);
  int *aNew;

  if( n>0 ){
    aNew = (int*)FUNC5(p->aiException,
                                   (n+p->nException)*sizeof(int));
    if( aNew ){
      int nNew = p->nException;
      const unsigned char *zCsr = (const unsigned char*)z;
      const unsigned char *zTerm = (const unsigned char*)&z[n];
      while( zCsr<zTerm ){
        u32 iCode;
        int bToken;
        FUNC0(zCsr, zTerm, iCode);
        if( iCode<128 ){
          p->aTokenChar[iCode] = (unsigned char)bTokenChars;
        }else{
          bToken = p->aCategory[FUNC3(iCode)];
          FUNC1( (bToken==0 || bToken==1) ); 
          FUNC1( (bTokenChars==0 || bTokenChars==1) );
          if( bToken!=bTokenChars && FUNC4(iCode)==0 ){
            int i;
            for(i=0; i<nNew; i++){
              if( (u32)aNew[i]>iCode ) break;
            }
            FUNC2(&aNew[i+1], &aNew[i], (nNew-i)*sizeof(int));
            aNew[i] = iCode;
            nNew++;
          }
        }
      }
      p->aiException = aNew;
      p->nException = nNew;
    }else{
      rc = SQLITE_NOMEM;
    }
  }

  return rc;
}