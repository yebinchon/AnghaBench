#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct snippetMatch {scalar_t__ snStatus; int iTerm; int iCol; int iStart; int nByte; } ;
struct TYPE_12__ {int nMatch; int /*<<< orphan*/  nSnippet; int /*<<< orphan*/  zSnippet; struct snippetMatch* aMatch; } ;
struct TYPE_11__ {int nTerms; } ;
struct TYPE_13__ {TYPE_2__ snippet; int /*<<< orphan*/  pStmt; TYPE_1__ q; } ;
typedef  TYPE_3__ fulltext_cursor ;
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/  s; } ;
typedef  TYPE_4__ StringBuffer ;

/* Variables and functions */
 scalar_t__ SNIPPET_DESIRED ; 
 void* SNIPPET_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (int,char const*,int,struct snippetMatch*,int,int) ; 

__attribute__((used)) static void FUNC9(
  fulltext_cursor *pCursor,   /* The cursor we need the snippet for */
  const char *zStartMark,     /* Markup to appear before each match */
  const char *zEndMark,       /* Markup to appear after each match */
  const char *zEllipsis       /* Ellipsis mark */
){
  int i, j;
  struct snippetMatch *aMatch;
  int nMatch;
  int nDesired;
  StringBuffer sb;
  int tailCol;
  int tailOffset;
  int iCol;
  int nDoc;
  const char *zDoc;
  int iStart, iEnd;
  int tailEllipsis = 0;
  int iMatch;
  

  FUNC2(pCursor->snippet.zSnippet);
  pCursor->snippet.zSnippet = 0;
  aMatch = pCursor->snippet.aMatch;
  nMatch = pCursor->snippet.nMatch;
  FUNC3(&sb);

  for(i=0; i<nMatch; i++){
    aMatch[i].snStatus = SNIPPET_IGNORE;
  }
  nDesired = 0;
  for(i=0; i<pCursor->q.nTerms; i++){
    for(j=0; j<nMatch; j++){
      if( aMatch[j].iTerm==i ){
        aMatch[j].snStatus = SNIPPET_DESIRED;
        nDesired++;
        break;
      }
    }
  }

  iMatch = 0;
  tailCol = -1;
  tailOffset = 0;
  for(i=0; i<nMatch && nDesired>0; i++){
    if( aMatch[i].snStatus!=SNIPPET_DESIRED ) continue;
    nDesired--;
    iCol = aMatch[i].iCol;
    zDoc = (const char*)FUNC6(pCursor->pStmt, iCol+1);
    nDoc = FUNC5(pCursor->pStmt, iCol+1);
    iStart = aMatch[i].iStart - 40;
    iStart = FUNC8(iStart, zDoc, nDoc, aMatch, nMatch, iCol);
    if( iStart<=10 ){
      iStart = 0;
    }
    if( iCol==tailCol && iStart<=tailOffset+20 ){
      iStart = tailOffset;
    }
    if( (iCol!=tailCol && tailCol>=0) || iStart!=tailOffset ){
      FUNC7(&sb);
      FUNC1(&sb);
      FUNC0(&sb, zEllipsis);
      FUNC1(&sb);
    }
    iEnd = aMatch[i].iStart + aMatch[i].nByte + 40;
    iEnd = FUNC8(iEnd, zDoc, nDoc, aMatch, nMatch, iCol);
    if( iEnd>=nDoc-10 ){
      iEnd = nDoc;
      tailEllipsis = 0;
    }else{
      tailEllipsis = 1;
    }
    while( iMatch<nMatch && aMatch[iMatch].iCol<iCol ){ iMatch++; }
    while( iStart<iEnd ){
      while( iMatch<nMatch && aMatch[iMatch].iStart<iStart
             && aMatch[iMatch].iCol<=iCol ){
        iMatch++;
      }
      if( iMatch<nMatch && aMatch[iMatch].iStart<iEnd
             && aMatch[iMatch].iCol==iCol ){
        FUNC4(&sb, &zDoc[iStart], aMatch[iMatch].iStart - iStart);
        iStart = aMatch[iMatch].iStart;
        FUNC0(&sb, zStartMark);
        FUNC4(&sb, &zDoc[iStart], aMatch[iMatch].nByte);
        FUNC0(&sb, zEndMark);
        iStart += aMatch[iMatch].nByte;
        for(j=iMatch+1; j<nMatch; j++){
          if( aMatch[j].iTerm==aMatch[iMatch].iTerm
              && aMatch[j].snStatus==SNIPPET_DESIRED ){
            nDesired--;
            aMatch[j].snStatus = SNIPPET_IGNORE;
          }
        }
      }else{
        FUNC4(&sb, &zDoc[iStart], iEnd - iStart);
        iStart = iEnd;
      }
    }
    tailCol = iCol;
    tailOffset = iEnd;
  }
  FUNC7(&sb);
  if( tailEllipsis ){
    FUNC1(&sb);
    FUNC0(&sb, zEllipsis);
  }
  pCursor->snippet.zSnippet = sb.s;
  pCursor->snippet.nSnippet = sb.len;  
}